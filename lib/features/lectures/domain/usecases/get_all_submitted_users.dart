import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:online_learning/features/lectures/domain/repository/lectures_repository.dart';
import 'package:online_learning/features/lectures/domain/usecases/submit_user.dart';
import 'package:online_learning/features/user/core/errors/failures.dart';
import 'package:online_learning/features/user/core/usecase/use_case.dart';

@lazySingleton
class GetAllSubmittedUsers extends UseCase<List<String>, SubmitParams> {
  final LecturesRepository lecturesRepository;

  GetAllSubmittedUsers({@required this.lecturesRepository});
  @override
  Future<Either<Failure, List<String>>> call(SubmitParams submitParams) {
    return lecturesRepository.getAllSubmittedUsers(
      userId: submitParams.userId,
      courseTitle: submitParams.courseTitle,
      lectureTitle: submitParams.lectureTitle,
    );
  }
}
