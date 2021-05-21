import 'package:equatable/equatable.dart';

class LectureEntity extends Equatable {
  final String? fileUrl;
  final String? title;
  final String? description;
  final String? fileType;
  final List<String>? submittedUsers;

  LectureEntity({
    required this.fileUrl,
    required this.title,
    required this.description,
    required this.submittedUsers,
    required this.fileType,
  });

  @override
  List<Object?> get props => [
        title,
        fileUrl,
        description,
        submittedUsers,
        fileType,
      ];

  @override
  bool get stringify => true;
}
