import 'package:dartz/dartz.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:online_learning/features/lectures/domain/repository/lectures_repository.dart';
import 'package:online_learning/features/user/core/errors/failures.dart';
import 'package:online_learning/features/user/core/usecase/use_case.dart';

class GetLectureProgress {
  final LecturesRepository lecturesRepository;

  GetLectureProgress(this.lecturesRepository);

  Future<firebase_storage.Task> call(NoParams noParams) {
    return lecturesRepository.getLectureProgress();
  }
}
