import 'package:cloud_firestore/cloud_firestore.dart';

import '../../domain/entities/homework_entity.dart';

class HomeworkModel extends HomeworkEntity {
  final String? filePath;
  final String? fileName;
  final String? title;
  final String? description;
  final int? dueDate;
  final List<String>? submittedHomeworks;

  HomeworkModel({
    required this.title,
    required this.filePath,
    required this.fileName,
    required this.dueDate,
    this.description,
    this.submittedHomeworks,
  }) : super(
          title: title,
          filePath: filePath,
          fileName: fileName,
          description: description,
          dueDate: dueDate,
        );

  HomeworkModel.empty({
    this.filePath = '',
    this.title = '',
    this.description = '',
    this.dueDate = 0,
    this.fileName = '',
    this.submittedHomeworks = const [],
  }) : super(
          title: '',
          filePath: '',
          fileName: '',
          description: '',
          dueDate: 0,
          submittedHomeworks: const [],
        );

  Map<String, dynamic> toDocument() {
    return {
      'fileUrl': filePath,
      'title': title,
      'description': description,
      'dueDate': dueDate,
      'fileName': fileName,
    };
  }

  static HomeworkModel fromSnapshot(
    DocumentSnapshot<Map<String, dynamic>> snap, [
    List<String>? submittedUsersList,
  ]) {
    final data = snap.data()!;

    return HomeworkModel(
      filePath: data['fileUrl'] as String?,
      title: data['title'] as String?,
      description: data['description'] as String?,
      dueDate: data['dueDate'] as int?,
      fileName: data['fileName'] as String?,
      submittedHomeworks: submittedUsersList,
    );
  }
}
