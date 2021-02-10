import 'package:dartz/dartz.dart';
import 'package:online_learning/features/user/core/errors/exceptions.dart';
import 'package:online_learning/features/user/core/errors/failures.dart';
import 'package:online_learning/features/user/data/datasources/user_remote_data_source.dart';
import 'package:online_learning/features/user/domain/entites/user.dart';
import 'package:online_learning/features/user/domain/repositories/user_repository.dart';

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
