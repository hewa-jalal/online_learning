import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import '../repository/homework_repository.dart';

import '../../../user/core/errors/failures.dart';
import '../../../user/core/usecase/use_case.dart';
import '../../../user/data/models/user_model.dart';

@lazySingleton
class UploadHomework extends UseCase<Unit, HomeworkParams> {
  final HomeworkRepository? homeworkRepository;

  UploadHomework(this.homeworkRepository);
  @override
  Future<Either<Failure, Unit>> call(HomeworkParams params) {
    return homeworkRepository!.uploadHomework(
      title: params.title,
      user: params.user,
      description: params.description,
      courseTitle: params.courseTitle,
      fileUrl: params.fileUrl,
      dueDate: params.dueDate,
    );
  }
}

class HomeworkParams extends Equatable {
  final String? fileUrl;
  final String title;
  final String? description;
  final String courseTitle;
  final UserModel user;
  final int dueDate;

  HomeworkParams({
    required this.user,
    required this.title,
    required this.courseTitle,
    required this.dueDate,
    this.fileUrl,
    this.description,
  });
  @override
  List<Object?> get props => [
        fileUrl,
        title,
        courseTitle,
        description,
        user,
      ];
}
