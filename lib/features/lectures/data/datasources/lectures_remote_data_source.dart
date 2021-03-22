import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:injectable/injectable.dart';
import 'package:online_learning/core/lecture_task.dart';
import 'package:online_learning/features/lectures/data/models/lecture_model.dart';

import 'package:online_learning/features/user/data/models/user_model.dart';
import 'package:path_provider/path_provider.dart';

abstract class LecturesRemoteDataSource {
  Future<LectureModel> downloadLecture(String fileUrl);
  Future<LectureModel> uploadLecture({
    @required String fileUrl,
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

  Future<List<String>> getAllSubmittedUsers({
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
  final LectureTask lectureTask;

  FirebaseLecturesRemoteDataSource({
    @required this.lectureTask,
    @required this.dio,
  });

  @override
  Future<LectureModel> downloadLecture(String fileUrl) async {
    var dir = await getTemporaryDirectory();
    final url = await storageRef.child('test444457').getDownloadURL();

    // await dio.download(url, '${dir.path}lectures.pdf');

    await FlutterDownloader.enqueue(url: url, savedDir: dir.path);

    return LectureModel(fileUrl: fileUrl);
  }

  @override
  Future<LectureModel> uploadLecture({
    @required String fileUrl,
    @required UserModel user,
    @required String courseTitle,
    String lectureTitle,
    String description,
  }) async {
    final lecture = LectureModel(
      fileUrl: fileUrl,
      title: lectureTitle,
      description: description,
    );
    lectureTask.task =
        storageRef.lecturesStorage(lectureTitle).putFile(File(fileUrl));
    final doc = userCoursesCollection.doc(courseTitle);
    // adding lecture to document
    doc.collection('lectures').doc(lectureTitle).set(lecture.toDocument());
    // adding user id that uploaded the lecture
    doc.set({'uploader_id': user.id}, SetOptions(merge: true));
    // create submittedUsers collection
    doc
        .collection('lectures')
        .doc(lectureTitle)
        .collection('submittedUsers')
        .add({});

    return lecture;
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
    final courseDoc = userCoursesCollection.doc(courseTitle);
    final lecturesQuery = await courseDoc.collection('lectures').get();
    final submitQuery = await courseDoc
        .collection('lectures')
        .doc('dd')
        .collection('submittedUsers')
        .get();
    return lecturesQuery.docs
        .map((doc) => LectureModel.fromSnapshot(doc, submitQuery))
        .toList();
  }

  @override
  Future<Unit> createCourse({@required String courseTitle}) async {
    userCoursesCollection.doc(courseTitle).set({});
    return unit;
  }

  @override
  Future<List<String>> getAllCoursesByUserId({@required String userId}) async {
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
    final courseDoc = userCoursesCollection.doc(courseTitle);
    courseDoc
        .collection('lectures')
        .doc(lectureTitle)
        .collection('submittedUsers')
        .add({
      'user_id': userId,
      'submitDate': DateTime.now().millisecondsSinceEpoch,
    });

    return unit;
  }

  @override
  Future<List<String>> getAllSubmittedUsers({
    @required String userId,
    @required String courseTitle,
    @required String lectureTitle,
  }) async {
    final courseDoc = userCoursesCollection.doc(courseTitle);
    final submittedUsersCollection = await courseDoc
        .collection('lectures')
        .doc(lectureTitle)
        .collection('submittedUsers')
        .get();

    final List<String> submittedUsers = List.from(
        submittedUsersCollection.docs.map((e) => e['user_id']).toList());

    return submittedUsers;
  }
}

extension StorageReferenceX on Reference {
  Reference lecturesStorage(String title) => child('courses').child(title);
}
