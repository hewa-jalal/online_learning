import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:online_learning/features/homeworks/data/datasources/homework_remote_data_source.dart';
import 'package:online_learning/features/homeworks/domain/entities/homework_entity.dart';
import 'package:online_learning/features/homeworks/domain/repository/homework_repository.dart';
import 'package:online_learning/features/user/data/models/user_model.dart';
import 'package:online_learning/features/user/core/errors/failures.dart';

@LazySingleton(as: HomeworkRepository)
class HomeworkRepositoryImpl extends HomeworkRepository {
  final FirebaseHomeworkRemoteDataSource remoteDataSource;

  HomeworkRepositoryImpl(this.remoteDataSource);

  @override
  Future<Either<Failure, Unit>> uploadHomework({
    @required UserModel user,
    @required String title,
    @required String courseTitle,
    @required int dueDate,
    String description,
    String fileUrl,
  }) async {
    try {
      final lecture = await remoteDataSource.uploadHomework(
        user: user,
        title: title,
        courseTitle: courseTitle,
        description: description,
        fileUrl: fileUrl,
        dueDate: dueDate,
      );
      return right(lecture);
    } on Exception catch (e) {
      print('exceptions ${e.toString()}');
      return left(HomeworkFailure());
    }
  }

  @override
  Future<Either<Failure, List<HomeworkEntity>>> getAllHomeworksByCourse({
    @required String courseTitle,
  }) async {
    try {
      final homeworks = await remoteDataSource.getAllHomeworksByCourse(
        courseTitle: courseTitle,
      );
      return right(homeworks);
    } on Exception catch (e) {
      print('exceptions ${e.toString()}');
      return left(HomeworkFailure());
    }
  }

  @override
  Future<Either<Failure, Unit>> submitHomework({
    @required String userId,
    @required String fileUrl,
    @required String note,
    @required String homeworkTitle,
  }) async {
    try {
      final submitUnit = await remoteDataSource.submitHomework(
        userId: userId,
        fileUrl: fileUrl,
        note: note,
        homeworkTitle: homeworkTitle,
      );
      return right(submitUnit);
    } on Exception catch (e) {
      print('exceptions ${e.toString()}');
      return left(HomeworkFailure());
    }
  }
}
