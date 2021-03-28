import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:online_learning/features/lectures/domain/entities/lecture_entity.dart';

class LectureModel extends LectureEntity {
  final String fileUrl;
  final String title;
  final String description;
  final List<String> submittedUsers;

  LectureModel({
    @required this.fileUrl,
    @required this.title,
    @required this.description,
    this.submittedUsers,
  }) : super(
          fileUrl: fileUrl,
          title: title,
          description: description,
          submittedUsers: submittedUsers,
        );

  LectureModel.empty({
    this.fileUrl = '',
    this.title = '',
    this.description = '',
    this.submittedUsers = const [],
  }) : super(
          fileUrl: '',
          title: '',
          description: '',
          submittedUsers: const [],
        );

  Map<String, dynamic> toDocument() {
    return {
      'fileUrl': fileUrl,
      'title': title,
      'description': description,
    };
  }

  static LectureModel fromSnapshot(
    DocumentSnapshot snap, [
    List<String> submittedUsersList,
  ]) {
    final data = snap.data();

    return LectureModel(
      fileUrl: data['fileUrl'] as String,
      title: data['title'] as String,
      description: data['description'] as String,
      submittedUsers: submittedUsersList,
    );
  }
}
