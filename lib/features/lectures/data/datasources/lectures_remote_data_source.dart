import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:online_learning/features/lectures/data/models/lecture_model.dart';
import 'package:path_provider/path_provider.dart';

abstract class LecturesRemoteDataSource {
  Future<LectureModel> downloadLecture(String fileUrl);
  Future<LectureModel> uploadLecture(String fileUrl);
  Future<Task> lectureProgress();
}

class FirebaseLecturesRemoteDataSource implements LecturesRemoteDataSource {
  final storageRef = FirebaseStorage.instance.ref();
  final lecturesCollection = FirebaseFirestore.instance.collection('lectures');
  final Dio dio;
  UploadTask uploadTask;

  FirebaseLecturesRemoteDataSource({@required this.dio});

  @override
  Future<LectureModel> downloadLecture(String fileUrl) async {
    var dir = await getTemporaryDirectory();
    final url = await storageRef.child('test').getDownloadURL();

    // await dio.download(url, '${dir.path}lectures.pdf');

    await FlutterDownloader.enqueue(url: url, savedDir: dir.path);

    return LectureModel(fileUrl: fileUrl);
  }

  @override
  Future<LectureModel> uploadLecture(String fileUrl) async {
    uploadTask = storageRef.child('test').putFile(File(fileUrl));
    lecturesCollection.add(LectureModel(fileUrl: fileUrl).toDocument());
    await lectureProgress();

    return LectureModel(fileUrl: fileUrl);
  }

  @override
  Future<Task> lectureProgress() async => Future.value(uploadTask);
}
