import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:online_learning/core/errors/exceptions.dart';
import 'package:online_learning/data/datasources/user_remote_data_source.dart';
import 'package:online_learning/domain/entites/user.dart';
import 'package:online_learning/core/errors/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:online_learning/domain/repositories/user_repository.dart';

class UserRepositoryImpl implements UserRepository {
  final UserRemoteDataSource userRemoteDataSource;

  UserRepositoryImpl(this.userRemoteDataSource);
  @override
  Future<Either<Failure, UserEntity>> getUser(int id) async {
    try {
      final user = await userRemoteDataSource.getUser(id);
      return right(user);
    } on UserNotFoundException {
      return left(UserNotFoundFailure());
    }
  }
}
