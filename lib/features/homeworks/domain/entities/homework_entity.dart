import 'package:equatable/equatable.dart';

class HomeworkEntity extends Equatable {
  final String? filePath;
  final String? fileName;
  final String? title;
  final String? description;
  final int? dueDate;
  final List<String>? submittedHomeworks;

  HomeworkEntity({
    required this.title,
    required this.dueDate,
    required this.filePath,
    required this.fileName,
    this.description,
    this.submittedHomeworks,
  });

  @override
  List<Object?> get props => [
        title,
        filePath,
        description,
        dueDate,
        submittedHomeworks,
        fileName,
      ];

  @override
  bool get stringify => true;
}
