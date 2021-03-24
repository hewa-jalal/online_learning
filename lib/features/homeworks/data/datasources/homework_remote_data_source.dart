import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:online_learning/features/homeworks/data/models/homework_model.dart';
import 'package:online_learning/features/homeworks/data/models/homework_submit_model.dart';
import 'package:online_learning/features/homeworks/domain/entities/homework_entity.dart';

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

  Future<List<HomeworkEntity>> getAllHomeworksByCourse({
    @required String courseTitle,
  });

  Future<Unit> submitHomework({
    @required String userId,
    @required String fileUrl,
    @required String note,
    @required String homeworkTitle,
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

  @override
  Future<List<HomeworkEntity>> getAllHomeworksByCourse({
    @required String courseTitle,
  }) async {
    final homeWorksList = <HomeworkModel>[];
    final courseDoc = userHomeworksCollection.doc(courseTitle);
    final homeworksQuery = await courseDoc.collection('homeworks').get();
    if (homeworksQuery.docs.isNotEmpty) {
      for (var doc in homeworksQuery.docs) {
        // print('loop doc => ${doc.data()}');
        List<String> listOfSubmittedUsers;
        listOfSubmittedUsers = await userHomeworksCollection
            .doc('AI')
            .collection('homeworks')
            .doc(doc.data()['title'])
            .collection('submittedUsers')
            .get()
            .then((value) => value.docs.map((e) => e.id).toList());
        // print('listOfSubmittedUsers => $listOfSubmittedUsers');
        homeWorksList.add(
          HomeworkModel.fromSnapshot(doc, listOfSubmittedUsers),
        );
      }
    }

    // final list =
    //     homeworksQuery.docs.map((element) => element.data()['title']).toList();
    // print('title list => $list');
    // return homeworksQuery.docs
    //     .map((doc) => HomeworkModel.fromSnapshot(doc))
    //     .toList();
    return homeWorksList;
  }

  @override
  Future<Unit> submitHomework({
    @required String userId,
    @required String fileUrl,
    @required String note,
    @required String homeworkTitle,
    @required int submitDate,
  }) async {
    final submitHomework = HomeworkSubmitModel(
      userId: userId,
      fileUrl: fileUrl,
      note: note,
      submitDate: submitDate,
    );

    userHomeworksCollection
        .doc('AI')
        .collection('homeworks')
        .doc(homeworkTitle)
        .collection('submittedUsers')
        .doc(userId)
        .set(submitHomework.toDocument());
    return unit;
  }
}

extension StorageReferenceX on Reference {
  Reference homeWorkStorage(String title) => child('homeworks').child(title);
}
