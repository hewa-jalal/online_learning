import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:online_learning/features/homeworks/domain/entities/homework_entity.dart';

class HomeworkModel extends HomeworkEntity {
  final String fileUrl;
  final String title;
  final String description;
  final int dueDate;

  HomeworkModel({
    @required this.title,
    @required this.dueDate,
    this.description,
    this.fileUrl,
  }) : super(
          fileUrl: fileUrl,
          title: title,
          description: description,
          dueDate: dueDate,
        );

  HomeworkModel.empty({
    this.fileUrl = '',
    this.title = '',
    this.description = '',
    this.dueDate = 0,
  }) : super(
          fileUrl: '',
          title: '',
          description: '',
          dueDate: 0,
        );

  Map<String, dynamic> toDocument() {
    return {
      'fileUrl': fileUrl,
      'title': title,
      'description': description,
      'dueDate': dueDate,
    };
  }

  static HomeworkModel fromSnapshot(DocumentSnapshot snap) {
    final data = snap.data();
    return HomeworkModel(
      fileUrl: data['fileUrl'] as String,
      title: data['title'] as String,
      description: data['description'] as String,
      dueDate: data['dueDate'] as int,
    );
  }
}
