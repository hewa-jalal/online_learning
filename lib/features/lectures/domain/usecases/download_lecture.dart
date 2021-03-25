import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:online_learning/features/lectures/domain/repository/lectures_repository.dart';
import 'package:online_learning/features/user/core/errors/failures.dart';
import 'package:online_learning/features/user/core/usecase/use_case.dart';
import 'package:online_learning/features/user/data/models/user_model.dart';

@lazySingleton
class DownloadLecture extends UseCase<Unit, LectureParams> {
  final LecturesRepository lecturesRepository;

  DownloadLecture(this.lecturesRepository);
  @override
  Future<Either<Failure, Unit>> call(LectureParams params) {
    return lecturesRepository.downloadLecture(
      courseTitle: params.courseTitle,
      fileUrl: params.fileUrl,
      lectureTitle: params.lectureTitle,
    );
  }
}

class LectureParams extends Equatable {
  final String fileUrl;
  final String lectureTitle;
  final String description;
  final String courseTitle;
  final UserModel user;

  LectureParams({
    @required this.fileUrl,
    @required this.lectureTitle,
    @required this.courseTitle,
    this.description,
    @required this.user,
  });
  @override
  List<Object> get props => [
        fileUrl,
        lectureTitle,
        courseTitle,
        description,
        user,
      ];
}
