import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:online_learning/features/lectures/data/models/lecture_model.dart';

abstract class LecturesRemoteDataSource {
  Future<LectureModel> getLecture(String fileUrl);
  Future<LectureModel> postLecture(String fileUrl);
}

class FirebaseLecturesRemoteDataSource implements LecturesRemoteDataSource {
  final storageRef = FirebaseStorage.instance.ref();
  final lecturesCollection = FirebaseFirestore.instance.collection('lectures');

  @override
  Future<LectureModel> getLecture(String fileUrl) {
    throw UnimplementedError();
  }

  @override
  Future<LectureModel> postLecture(String fileUrl) async {
    final uploadTask =
        storageRef.child(DateTime.now().toString()).putFile(File(fileUrl));
    lecturesCollection.add(LectureModel(fileUrl: fileUrl).toDocument());
    return LectureModel(fileUrl: fileUrl);
  }
}
