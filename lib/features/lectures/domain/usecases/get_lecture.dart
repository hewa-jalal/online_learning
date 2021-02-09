import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:online_learning/features/lectures/domain/entities/lecture_entity.dart';
import 'package:online_learning/features/lectures/domain/repository/lectures_repository.dart';
import 'package:online_learning/features/user/core/errors/failures.dart';
import 'package:online_learning/features/user/core/usecase/use_case.dart';

class GetLecture extends UseCase<LectureEntity, LectureParams> {
  final LecturesRepository lecturesRepository;

  GetLecture(this.lecturesRepository);
  @override
  Future<Either<Failure, LectureEntity>> call(LectureParams params) {
    return lecturesRepository.getLecture(params.fileUrl);
  }
}

class LectureParams extends Equatable {
  final String fileUrl;

  LectureParams({@required this.fileUrl});
  @override
  List<Object> get props => [];
}
