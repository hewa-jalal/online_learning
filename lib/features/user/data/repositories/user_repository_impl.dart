import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../core/errors/exceptions.dart';
import '../../core/errors/failures.dart';
import '../datasources/user_remote_data_source.dart';
import '../../domain/entites/user.dart';
import '../../domain/repositories/user_repository.dart';

@LazySingleton(as: UserRepository)
class UserRepositoryImpl implements UserRepository {
  final UserRemoteDataSource? userRemoteDataSource;

  UserRepositoryImpl(this.userRemoteDataSource);
  @override
  Future<Either<Failure, UserEntity>> getUser(int id) async {
    try {
      final user = await userRemoteDataSource!.getUser(id);
      return right(user);
    } on UserNotFoundException {
      return left(UserNotFoundFailure());
    }
  }

  @override
  Future<Either<Failure, List<UserEntity>>> getAllUsers() async {
    try {
      final userList = await userRemoteDataSource!.getAllUsers();
      return right(userList);
    } on UserNotFoundException {
      return left(UserNotFoundFailure());
    }
  }

  @override
  Future<Either<Failure, Unit>> updateUserTime(int id) async {
    try {
      await userRemoteDataSource!.updateUserTime(id);
      return right(unit);
    } on UserNotFoundException {
      return left(UserNotFoundFailure());
    }
  }

  @override
  Future<Either<Failure, Unit>> userOnlineStatus(int id, bool isOnline) async {
    try {
      await userRemoteDataSource!.userOnlineStatus(id, isOnline);
      return right(unit);
    } on UserNotFoundException {
      return left(UserNotFoundFailure());
    }
  }
}
