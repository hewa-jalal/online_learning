import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import '../../domain/entities/homework_submit_entity.dart';

class HomeworkSubmitModel extends HomeworkSubmitEntity {
  final String fileUrl;
  final String userId;
  final String note;
  final int submitDate;

  HomeworkSubmitModel({
    @required this.userId,
    @required this.submitDate,
    this.fileUrl,
    this.note,
  }) : super(
          userId: userId,
          fileUrl: fileUrl,
          note: note,
          submitDate: submitDate,
        );

  HomeworkSubmitModel.empty({
    this.userId = '',
    this.fileUrl = '',
    this.note = '',
    this.submitDate = 0,
  }) : super(
          userId: '',
          fileUrl: '',
          note: '',
          submitDate: 0,
        );

  Map<String, dynamic> toDocument() {
    return {
      'userId': userId,
      'fileUrl': fileUrl,
      'note': note,
      'submitDate': submitDate,
    };
  }

  static HomeworkSubmitModel fromSnapshot(DocumentSnapshot snap) {
    final data = snap.data();

    return HomeworkSubmitModel(
      userId: data['userId'] as String,
      fileUrl: data['fileUrl'] as String,
      note: data['note'] as String,
      submitDate: data['submitDate'] as int,
    );
  }
}
