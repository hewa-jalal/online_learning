import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:online_learning/features/lectures/data/datasources/lectures_remote_data_source.dart';
import 'package:online_learning/features/lectures/domain/entities/lecture_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:online_learning/features/lectures/domain/repository/lectures_repository.dart';
import 'package:online_learning/features/user/core/errors/failures.dart';
import 'package:online_learning/features/user/data/models/user_mode.dart';

@LazySingleton(as: LecturesRepository)
class LecturesRepositoryImpl extends LecturesRepository {
  final FirebaseLecturesRemoteDataSource remoteDataSource;

  LecturesRepositoryImpl(this.remoteDataSource);
  @override
  Future<Either<Failure, LectureEntity>> downloadLecture(String fileUrl) async {
    try {
      final lecture = await remoteDataSource.downloadLecture(fileUrl);
      return right(lecture);
    } on Exception catch (e) {
      print('exceptions ${e.toString()}');
      return left(UserNotFoundFailure());
    }
  }

  @override
  Future<Either<Failure, LectureEntity>> uploadLecture({
    @required String fileUrl,
    @required UserModel user,
    String title,
    String description,
  }) async {
    try {
      final lecture = await remoteDataSource.uploadLecture(
        fileUrl: fileUrl,
        user: user,
        title: title,
        description: description,
      );
      return right(lecture);
    } on Exception catch (e) {
      print('exceptions ${e.toString()}');
      return left(UserNotFoundFailure());
    }
  }

  @override
  Future<Either<Failure, List<LectureEntity>>> getAllLectures() async {
    try {
      final lectures = await remoteDataSource.getAllLectures();
      return right(lectures);
    } catch (e) {
      print(e.toString());
      return left(LectureFailure());
    }
  }

  @override
  Future<Either<Failure, List<LectureEntity>>> getAllLecturesByUserId({
    @required String userId,
  }) async {
    try {
      final lectures =
          await remoteDataSource.getAllLecturesByUserId(userId: userId);
      return right(lectures);
    } catch (e) {
      print(e.toString());
      return left(LectureFailure());
    }
  }
}
