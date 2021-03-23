import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:online_learning/features/homeworks/data/datasources/homework_remote_data_source.dart';
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
}
