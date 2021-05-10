import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/lecture_task.dart';
import '../models/lecture_model.dart';

import '../../../user/data/models/user_model.dart';
import 'package:path_provider/path_provider.dart';
import 'package:mime/mime.dart' as mime;

abstract class LecturesRemoteDataSource {
  Future<Unit> downloadLecture({
    @required String fileUrl,
    @required String courseTitle,
    @required String lectureTitle,
  });
  Future<Unit> uploadLecture({
    @required String filePath,
    @required UserModel user,
    @required String courseTitle,
    String lectureTitle,
    String description,
  });

  Future<List<LectureModel>> getAllLectures();
  Future<List<LectureModel>> getAllLecturesByCourse({
    @required String courseTitle,
  });
  Future<List<String>> getAllCoursesByUserId({@required String userId});
  Future<Unit> createCourse({@required String courseTitle});
  Future<Unit> submitUser({
    @required String userId,
    @required String courseTitle,
    @required String lectureTitle,
  });
}

@LazySingleton(as: LecturesRemoteDataSource)
class FirebaseLecturesRemoteDataSource extends LecturesRemoteDataSource {
  final storageRef = FirebaseStorage.instance.ref();
  final userCoursesCollection =
      FirebaseFirestore.instance.collection('userCourses');
  final Dio dio;
  final CustomUploadTask lectureTask;

  FirebaseLecturesRemoteDataSource({
    @required this.lectureTask,
    @required this.dio,
  });

  @override
  Future<Unit> downloadLecture({
    @required String fileUrl,
    @required String courseTitle,
    @required String lectureTitle,
  }) async {
    final doc = userCoursesCollection.doc(courseTitle);
    doc.collection('lectures').doc(lectureTitle).set({
      'downloadedUsers': ['12'],
    }, SetOptions(merge: true));
    var dir = await getExternalStorageDirectory();

    // await dio.download(url, '${dir.path}/lectures.pdf',
    //     onReceiveProgress: (rcv, total) {
    //   print(
    //       'received: ${rcv.toStringAsFixed(0)} out of total: ${total.toStringAsFixed(0)}');
    // });

    await FlutterDownloader.enqueue(
      url: fileUrl,
      savedDir: dir.path,
      fileName: 'newFile',
    );

    return unit;
  }

  @override
  Future<Unit> uploadLecture({
    @required String filePath,
    @required UserModel user,
    @required String courseTitle,
    String lectureTitle,
    String description,
  }) async {
    lectureTask.task =
        storageRef.lecturesStorage(lectureTitle).putFile(File(filePath));

    lectureTask.task.then((res) async {
      final downloadUrl = await res.ref.getDownloadURL();
      final lecture = LectureModel(
        fileUrl: downloadUrl,
        title: lectureTitle,
        description: description,
      );
      final metaData =
          await storageRef.lecturesStorage(lectureTitle).getMetadata();
      print('metadata contentType ========>  ' + metaData.contentType);
      final memeString = mime.lookupMimeType(metaData.contentType);
      print('MIME: $memeString');

      final doc = userCoursesCollection.doc(courseTitle);
      // adding lecture to document
      doc.collection('lectures').doc(lectureTitle).set(lecture.toDocument());
      doc.collection('lectures').doc(lectureTitle).set({
        'fileType': metaData.contentType,
      }, SetOptions(merge: true));
      // adding user id that uploaded the lecture
      doc.set({'uploader_id': user.id}, SetOptions(merge: true));
    });

    return unit;
  }

  @override
  Future<List<LectureModel>> getAllLectures() async {
    final querySnapshot = await userCoursesCollection.get();

    return querySnapshot.docs
        .map((doc) => LectureModel.fromSnapshot(doc))
        .toList();
  }

  @override
  Future<List<LectureModel>> getAllLecturesByCourse({
    @required String courseTitle,
  }) async {
    final lectureList = <LectureModel>[];

    final courseDoc = userCoursesCollection.doc(courseTitle);
    final lecturesQuery = await courseDoc.collection('lectures').get();

    if (lecturesQuery.docs.isNotEmpty) {
      for (var doc in lecturesQuery.docs) {
        List<String> listOfSubmittedUsers;
        listOfSubmittedUsers = await userCoursesCollection
            .doc(courseTitle)
            .collection('lectures')
            .doc(doc.data()['title'])
            .collection('submittedUsers')
            .get()
            .then((value) => value.docs.map((e) => e.id).toList());

        lectureList.add(
          LectureModel.fromSnapshot(doc, listOfSubmittedUsers),
        );
      }
    }

    return lectureList;
  }

  @override
  Future<Unit> createCourse({@required String courseTitle}) async {
    userCoursesCollection.doc(courseTitle).set({});
    return unit;
  }

  @override
  Future<List<String>> getAllCoursesByUserId({
    @required String userId,
  }) async {
    // final getQuery = await userCoursesCollection.where('user_id', isEqualTo: userId).get();
    final getQuery = await userCoursesCollection.get();
    return getQuery.docs.map((doc) => doc.id).toList();
  }

  @override
  Future<Unit> submitUser({
    @required String userId,
    @required String courseTitle,
    @required String lectureTitle,
  }) async {
    userCoursesCollection
        .doc(courseTitle)
        .collection('lectures')
        .doc(lectureTitle)
        .collection('submittedUsers')
        .doc(userId)
        .set({
      'userId': userId,
      'submitDate': DateTime.now().millisecondsSinceEpoch,
    });

    return unit;
  }
}

extension StorageReferenceX on Reference {
  Reference lecturesStorage(String title) => child('lectures').child(title);
}
