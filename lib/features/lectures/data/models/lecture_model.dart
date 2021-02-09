import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:online_learning/features/lectures/domain/entities/lecture_entity.dart';

class LectureModel extends LectureEntity {
  final String fileUrl;

  LectureModel({@required this.fileUrl}) : super(fileUrl: fileUrl);

  Map<String, dynamic> toDocument() {
    return {
      'fileUrl': fileUrl,
    };
  }

  factory LectureModel.fromSnapshot(DocumentSnapshot snap) {
    return LectureModel(fileUrl: snap['fileUrl'] as String);
  }
}
