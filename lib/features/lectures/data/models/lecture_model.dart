import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:online_learning/features/lectures/domain/entities/lecture_entity.dart';

class LectureModel extends LectureEntity {
  final String fileUrl;
  final String title;
  final String description;

  LectureModel({
    @required this.fileUrl,
    @required this.title,
    @required this.description,
  }) : super(
          fileUrl: fileUrl,
          title: title,
          description: description,
        );

  LectureModel.empty({
    this.fileUrl = '',
    this.title = '',
    this.description = '',
  }) : super(
          fileUrl: '',
          title: '',
          description: '',
        );

  Map<String, dynamic> toDocument() {
    return {
      'fileUrl': fileUrl,
      'title': title,
      'description': description,
    };
  }

  factory LectureModel.fromSnapshot(DocumentSnapshot snap) {
    return LectureModel(
      fileUrl: snap['fileUrl'] as String,
      title: snap['title'] as String,
      description: snap['description'] as String,
    );
  }
}
