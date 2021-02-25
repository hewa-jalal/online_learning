import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:online_learning/core/lecture_task.dart';
import 'package:online_learning/features/lectures/data/models/lecture_model.dart';

import 'package:online_learning/features/user/data/models/user_mode.dart';
import 'package:path_provider/path_provider.dart';

abstract class LecturesRemoteDataSource {
  Future<LectureModel> downloadLecture(String fileUrl);
  Future<LectureModel> uploadLecture({
    @required String fileUrl,
    @required UserModel user,
    String title,
    String description,
  });

  Future<List<LectureModel>> getAllLectures();
}

class FirebaseLecturesRemoteDataSource implements LecturesRemoteDataSource {
  final storageRef = FirebaseStorage.instance.ref();
  final coursesCollection = FirebaseFirestore.instance.collection('courses');
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
    String title,
    String description,
  }) async {
    final lecture = LectureModel(
      fileUrl: fileUrl,
      title: title,
      description: description,
      user: user,
    );
    lectureTask.task = storageRef.lecturesStorage(title).putFile(File(fileUrl));
    // final downloadUrl =
    //     await storageRef.lecturesStorage(title).getDownloadURL();
    // print('--------> fileUrl: $fileUrl || downloadUrl: $downloadUrl');
    final docRef = coursesCollection.doc(DateTime.now().toString());
    docRef.set(lecture.toDocument());
    docRef.set({'user': user.toDocument()}, SetOptions(merge: true));

    return lecture;
  }

  @override
  Future<List<LectureModel>> getAllLectures() async {
    final querySnapshot = await coursesCollection.get();

    return querySnapshot.docs
        .map((doc) => LectureModel.fromSnapshot(doc))
        .toList();
  }
}

extension StorageReferenceX on Reference {
  Reference lecturesStorage(String title) => child('courses').child(title);
}
