import 'package:equatable/equatable.dart';

class HomeworkSubmitEntity extends Equatable {
  final String? filePath;
  final String? fileName;
  final String? userId;
  final String? note;
  final int? submitDate;

  HomeworkSubmitEntity({
    required this.userId,
    required this.submitDate,
    required this.filePath,
    required this.fileName,
    this.note,
  });

  @override
  List<Object?> get props => [
        userId,
        filePath,
        note,
        submitDate,
        fileName,
      ];

  @override
  bool get stringify => true;
}
