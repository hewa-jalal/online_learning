import 'package:equatable/equatable.dart';

class HomeworkEntity extends Equatable {
  final String? fileUrl;
  final String? title;
  final String? description;
  final int? dueDate;
  final List<String>? submittedHomeworks;

  HomeworkEntity({
    required this.title,
    required this.dueDate,
    this.fileUrl,
    this.description,
    this.submittedHomeworks,
  });

  @override
  List<Object?> get props => [
        title,
        fileUrl,
        description,
        dueDate,
        submittedHomeworks,
      ];

  @override
  bool get stringify => true;
}
