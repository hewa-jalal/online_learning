import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:online_learning/features/homeworks/domain/entities/homework_submit_entity.dart';

class HomeworkSubmitModel extends HomeworkSubmitEntity {
  final String fileUrl;
  final String userId;
  final String note;

  HomeworkSubmitModel({
    @required this.userId,
    this.fileUrl,
    this.note,
  }) : super(
          userId: userId,
          fileUrl: fileUrl,
          note: note,
        );

  HomeworkSubmitModel.empty({
    this.userId = '',
    this.fileUrl = '',
    this.note = '',
  }) : super(
          userId: '',
          fileUrl: '',
          note: '',
        );

  Map<String, dynamic> toDocument() {
    return {
      'userId': userId,
      'fileUrl': fileUrl,
      'note': note,
    };
  }

  static HomeworkSubmitModel fromSnapshot(
    DocumentSnapshot snap, [
    List<String> submittedUsersList,
  ]) {
    final data = snap.data();

    return HomeworkSubmitModel(
      userId: data['userId'],
      fileUrl: data['fileUrl'],
      note: data['note'],
    );
  }
}
