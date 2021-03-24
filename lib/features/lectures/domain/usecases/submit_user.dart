import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:online_learning/features/lectures/domain/repository/lectures_repository.dart';
import 'package:online_learning/features/user/core/errors/failures.dart';
import 'package:online_learning/features/user/core/usecase/use_case.dart';
import 'package:equatable/equatable.dart';

@lazySingleton
class SubmitUser extends UseCase<Unit, SubmitParams> {
  final LecturesRepository lecturesRepository;

  SubmitUser({@required this.lecturesRepository});
  @override
  Future<Either<Failure, Unit>> call(SubmitParams submitParams) {
    return lecturesRepository.submitUser(
      userId: submitParams.userId,
      courseTitle: submitParams.courseTitle,
      lectureTitle: submitParams.lectureTitle,
    );
  }
}

class SubmitParams extends Equatable {
  final String userId;
  final String courseTitle;
  final String lectureTitle;

  const SubmitParams({
    @required this.userId,
    @required this.courseTitle,
    @required this.lectureTitle,
  });

  @override
  List<Object> get props => [userId, courseTitle, lectureTitle];
}