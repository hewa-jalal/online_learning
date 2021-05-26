import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import '../../../user/core/errors/failures.dart';
import '../../../user/core/usecase/use_case.dart';
import '../repository/lectures_repository.dart';

@lazySingleton
class SubmitUser extends UseCase<Unit, SubmitParams> {
  final LecturesRepository? lecturesRepository;

  SubmitUser({required this.lecturesRepository});
  @override
  Future<Either<Failure, Unit>> call(SubmitParams submitParams) {
    return lecturesRepository!.submitUser(
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
    required this.userId,
    required this.courseTitle,
    required this.lectureTitle,
  });

  @override
  List<Object> get props => [userId, courseTitle, lectureTitle];
}
