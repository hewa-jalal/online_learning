import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:online_learning/features/lectures/domain/entities/lecture_entity.dart';
import 'package:online_learning/features/lectures/domain/repository/lectures_repository.dart';
import 'package:online_learning/features/user/core/errors/failures.dart';
import 'package:online_learning/features/user/core/usecase/use_case.dart';
import 'package:online_learning/features/user/data/models/user_mode.dart';

@lazySingleton
class DownloadLecture extends UseCase<LectureEntity, LectureParams> {
  final LecturesRepository lecturesRepository;

  DownloadLecture(this.lecturesRepository);
  @override
  Future<Either<Failure, LectureEntity>> call(LectureParams params) {
    return lecturesRepository.downloadLecture(params.fileUrl);
  }
}

class LectureParams extends Equatable {
  final String fileUrl;
  final String title;
  final String description;
  final UserModel user;

  LectureParams({
    @required this.fileUrl,
    @required this.title,
    @required this.user,
    this.description,
  });
  @override
  List<Object> get props => [fileUrl];
}
