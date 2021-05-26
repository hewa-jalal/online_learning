import 'package:cloud_firestore/cloud_firestore.dart';

import '../../domain/entities/lecture_entity.dart';

class LectureModel extends LectureEntity {
  final String? fileUrl;
  final String? title;
  final String? description;
  final String? fileType;
  final String? fileName;
  final List<String>? submittedUsers;
  final int? uploadDate;

  LectureModel({
    required this.fileUrl,
    required this.title,
    required this.description,
    required this.fileType,
    required this.fileName,
    required this.uploadDate,
    this.submittedUsers,
  }) : super(
          fileUrl: fileUrl,
          title: title,
          description: description,
          submittedUsers: submittedUsers,
          fileType: fileType,
          fileName: fileName,
          uploadDate: uploadDate,
        );

  LectureModel.empty({
    this.fileUrl = '',
    this.title = '',
    this.description = '',
    this.fileType = '',
    this.submittedUsers = const [],
    this.fileName = '',
    this.uploadDate = 0,
  }) : super(
          fileUrl: '',
          title: '',
          description: '',
          fileType: '',
          uploadDate: 0,
          fileName: '',
          submittedUsers: const [],
        );

  Map<String, dynamic> toDocument() {
    return {
      'fileUrl': fileUrl,
      'title': title,
      'description': description,
      'fileType': fileType,
      'fileName': fileName,
      'uploadDate': uploadDate,
    };
  }

  static LectureModel fromSnapshot(
    DocumentSnapshot<Map<String, dynamic>> snap, [
    List<String>? submittedUsersList,
  ]) {
    final data = snap.data()!;

    return LectureModel(
      fileUrl: data['fileUrl'] as String?,
      title: data['title'] as String?,
      description: data['description'] as String?,
      fileType: data['fileType'] as String?,
      fileName: data['fileName'] as String?,
      uploadDate: data['uploadDate'] as int?,
      submittedUsers: submittedUsersList,
    );
  }
}
