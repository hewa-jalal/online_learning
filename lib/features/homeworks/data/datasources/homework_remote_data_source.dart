import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/lecture_task.dart';
import '../../../user/data/models/user_model.dart';
import '../../domain/entities/homework_entity.dart';
import '../../domain/entities/homework_submit_entity.dart';
import '../models/homework_model.dart';
import '../models/homework_submit_model.dart';

abstract class HomeWorkRemoteDataSource {
  Future<Unit> uploadHomework({
    required UserModel user,
    required String title,
    required String courseTitle,
    required int dueDate,
    required String? fileUrl,
    required String? fileName,
    String? description,
  });

  Future<HomeworkSubmitEntity> getSubmittedHomework({
    required String courseTitle,
    required String homeworkTitle,
    required String userId,
  });

  Future<List<HomeworkEntity>> getAllHomeworksByCourse({
    required String courseTitle,
  });

  Future<Unit> submitHomework({
    required String userId,
    required String? filePath,
    required String? fileName,
    required String courseTitle,
    required String? note,
    required String homeworkTitle,
    required int? submitDate,
  });
}

@LazySingleton(as: HomeWorkRemoteDataSource)
class FirebaseHomeworkRemoteDataSource extends HomeWorkRemoteDataSource {
  final userHomeworksCollection =
      FirebaseFirestore.instance.collection('userCourses');
  final storageRef = FirebaseStorage.instance.ref();

  final CustomUploadTask? lectureTask;

  FirebaseHomeworkRemoteDataSource({
    required this.lectureTask,
  });

  @override
  Future<Unit> uploadHomework({
    required UserModel user,
    required String title,
    required String courseTitle,
    required int dueDate,
    required String? fileUrl,
    required String? fileName,
    String? description,
  }) async {
    String? newFileUrl = '';

    if (fileUrl!.isEmpty || fileUrl == null) {
      fileUrl = newFileUrl;
    }
    final homeWork = HomeworkModel(
      title: title,
      description: description,
      filePath: fileUrl,
      dueDate: dueDate,
      fileName: fileName,
    );

    if (fileUrl.isNotEmpty) {
      lectureTask!.task =
          storageRef.homeWorkStorage(title).putFile(File(fileUrl));
    }

    final doc = userHomeworksCollection.doc(courseTitle);
    doc.collection('homeworks').doc(title).set(homeWork.toDocument());
    doc.set({'uploader_id': user.id}, SetOptions(merge: true));
    return unit;
  }

  @override
  Future<HomeworkSubmitEntity> getSubmittedHomework({
    required String courseTitle,
    required String homeworkTitle,
    required String userId,
  }) async {
    print('remote submit userId => $userId');
    final courseDoc = userHomeworksCollection.doc(courseTitle);
    final homeworkSnap = await courseDoc
        .collection('homeworks')
        .doc(homeworkTitle)
        .collection('submittedUsers')
        .doc(userId)
        .get();
    return HomeworkSubmitModel.fromSnapshot(homeworkSnap);
  }

  @override
  Future<List<HomeworkEntity>> getAllHomeworksByCourse({
    required String courseTitle,
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
    required String userId,
    required String? filePath,
    required String? fileName,
    required String courseTitle,
    required String? note,
    required String homeworkTitle,
    required int? submitDate,
  }) async {
    lectureTask!.task =
        storageRef.homeWorkStorage(homeworkTitle).putFile(File(filePath!));

    lectureTask!.task.then((res) async {
      final downloadUrl = await res.ref.getDownloadURL();
      final homework = HomeworkSubmitModel(
        userId: userId,
        filePath: downloadUrl,
        fileName: fileName,
        submitDate: submitDate,
        note: note,
      );

      final doc = userHomeworksCollection
          .doc(courseTitle)
          .collection('homeworks')
          .doc(homeworkTitle)
          .collection('submittedUsers')
          .doc(userId);
      // adding homework to document
      doc.set(homework.toDocument());
    });

    return unit;
  }
}

extension StorageReferenceX on Reference {
  Reference homeWorkStorage(String title) => child('homeworks').child(title);
}
