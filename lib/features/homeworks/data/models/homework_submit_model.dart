import 'package:cloud_firestore/cloud_firestore.dart';

import '../../domain/entities/homework_submit_entity.dart';

class HomeworkSubmitModel extends HomeworkSubmitEntity {
  final String? filePath;
  final String? fileName;
  final String? userId;
  final String? note;
  final int? submitDate;

  HomeworkSubmitModel({
    required this.userId,
    required this.submitDate,
    required this.filePath,
    required this.fileName,
    this.note,
  }) : super(
          userId: userId,
          filePath: filePath,
          fileName: fileName,
          note: note,
          submitDate: submitDate,
        );

  HomeworkSubmitModel.empty({
    this.userId = '',
    this.filePath = '',
    this.note = '',
    this.submitDate = 0,
    this.fileName = '',
  }) : super(
          userId: '',
          filePath: '',
          note: '',
          submitDate: 0,
          fileName: '',
        );

  Map<String, dynamic> toDocument() {
    return {
      'userId': userId,
      'fileUrl': filePath,
      'note': note,
      'submitDate': submitDate,
      'fileName': fileName,
    };
  }

  static HomeworkSubmitModel fromSnapshot(
      DocumentSnapshot<Map<String, dynamic>> snap) {
    final data = snap.data()!;

    return HomeworkSubmitModel(
      userId: data['userId'] as String?,
      filePath: data['fileUrl'] as String?,
      note: data['note'] as String?,
      submitDate: data['submitDate'] as int?,
      fileName: data['fileName'] as String?,
    );
  }
}
