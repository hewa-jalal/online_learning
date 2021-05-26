import 'package:equatable/equatable.dart';

class LectureEntity extends Equatable {
  final String? fileUrl;
  final String? title;
  final String? description;
  final String? fileType;
  final String? fileName;
  final int? uploadDate;
  final List<String>? submittedUsers;

  LectureEntity({
    required this.fileUrl,
    required this.title,
    required this.description,
    required this.submittedUsers,
    required this.fileType,
    required this.fileName,
    required this.uploadDate,
  });

  @override
  List<Object?> get props => [
        title,
        fileUrl,
        description,
        submittedUsers,
        fileType,
        fileName,
        uploadDate,
      ];

  @override
  bool get stringify => true;
}
