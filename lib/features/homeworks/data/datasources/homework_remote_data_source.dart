import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:online_learning/features/homeworks/data/models/homework_model.dart';

import '../../../../core/lecture_task.dart';
import '../../../user/data/models/user_model.dart';

abstract class HomeWorkRemoteDataSource {
  Future<Unit> uploadHomework({
    @required UserModel user,
    @required String title,
    @required String courseTitle,
    @required int dueDate,
    String description,
    String fileUrl,
  });
}

@LazySingleton(as: HomeWorkRemoteDataSource)
class FirebaseHomeworkRemoteDataSource extends HomeWorkRemoteDataSource {
  final userHomeworksCollection =
      FirebaseFirestore.instance.collection('userHomeworks');
  final storageRef = FirebaseStorage.instance.ref();

  final LectureTask lectureTask;

  FirebaseHomeworkRemoteDataSource({
    @required this.lectureTask,
  });

  @override
  Future<Unit> uploadHomework({
    @required UserModel user,
    @required String title,
    @required String courseTitle,
    @required int dueDate,
    String description,
    String fileUrl,
  }) async {
    final homeWork = HomeworkModel(
      title: title,
      description: description,
      fileUrl: fileUrl,
      dueDate: dueDate,
    );

    lectureTask.task = storageRef.homeWorkStorage(title).putFile(File(fileUrl));

    final doc = userHomeworksCollection.doc(courseTitle);
    doc.collection('homeworks').doc(title).set(homeWork.toDocument());
    doc.set({'uploader_id': user.id}, SetOptions(merge: true));
    return unit;
  }
}

extension StorageReferenceX on Reference {
  Reference homeWorkStorage(String title) => child('homeworks').child(title);
}
