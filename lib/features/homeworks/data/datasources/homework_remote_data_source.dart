import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import '../models/homework_model.dart';
import '../models/homework_submit_model.dart';
import '../../domain/entities/homework_entity.dart';
import '../../domain/entities/homework_submit_entity.dart';

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

  Future<HomeworkSubmitEntity> getHomework({
    @required String courseTitle,
    @required String homeworkTitle,
  });

  Future<List<HomeworkEntity>> getAllHomeworksByCourse({
    @required String courseTitle,
  });

  Future<Unit> submitHomework({
    @required String userId,
    @required String fileUrl,
    @required String courseTitle,
    @required String note,
    @required String homeworkTitle,
  });
}

@LazySingleton(as: HomeWorkRemoteDataSource)
class FirebaseHomeworkRemoteDataSource extends HomeWorkRemoteDataSource {
  final userHomeworksCollection =
      FirebaseFirestore.instance.collection('userCourses');
  final storageRef = FirebaseStorage.instance.ref();

  final CustomUploadTask lectureTask;

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
  Future<HomeworkSubmitEntity> getHomework({
    @required String courseTitle,
    @required String homeworkTitle,
  }) async {
    print('remote homework title ====> $homeworkTitle');
    final courseDoc = userHomeworksCollection.doc(courseTitle);
    final homeworkSnap = await courseDoc
        .collection('homeworks')
        .doc(homeworkTitle)
        .collection('submittedUsers')
        .doc('21')
        .get();
    final homeworkSubmitModel = HomeworkSubmitModel.fromSnapshot(homeworkSnap);
    return homeworkSubmitModel;
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
        List<String> listOfSubmittedUsers;
        listOfSubmittedUsers = await userHomeworksCollection
            .doc(courseTitle)
            .collection('homeworks')
            .doc(doc.data()['title'])
            .collection('submittedUsers')
            .get()
            .then((snap) => snap.docs.map((e) => e.id).toList());

        homeWorksList.add(
          HomeworkModel.fromSnapshot(doc, listOfSubmittedUsers),
        );
      }
    }

    return homeWorksList;
  }

  @override
  Future<Unit> submitHomework({
    @required String userId,
    @required String fileUrl,
    @required String courseTitle,
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
        .doc(courseTitle)
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
