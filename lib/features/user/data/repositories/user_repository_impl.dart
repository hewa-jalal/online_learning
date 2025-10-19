import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../core/errors/exceptions.dart';
import '../../core/errors/failures.dart';
import '../../domain/entites/user.dart';
import '../../domain/repositories/user_repository.dart';
import '../datasources/user_remote_data_source.dart';

@LazySingleton(as: UserRepository)
class UserRepositoryImpl implements UserRepository {
  final UserRemoteDataSource? userRemoteDataSource;

  UserRepositoryImpl(this.userRemoteDataSource);
  @override
  Future<Either<UserNotFoundFailure, UserEntity>> getUser(int id, String password) async {
    try {
      final user = await userRemoteDataSource!.getUser(id, password);
      return right(user);
    } on UserNotFoundException catch (e){
      return left(UserNotFoundFailure(message: e.message));
    }
  }

  @override
  Future<Either<Failure, List<UserEntity>>> getAllUsers() async {
    try {
      final userList = await userRemoteDataSource!.getAllUsers();
      return right(userList);
    } on UserNotFoundException {
      return left(AllUserFailure());
    }
  }

  @override
  Future<Either<Failure, Unit>> updateUserTime(int id) async {
    try {
      await userRemoteDataSource!.updateUserTime(id);
      return right(unit);
    } on UserNotFoundException {
      return left(UpdateUserTimeFailure());
    }
  }

  @override
  Future<Either<Failure, Unit>> userOnlineStatus(int id, bool isOnline) async {
    try {
      await userRemoteDataSource!.userOnlineStatus(id, isOnline);
      return right(unit);
    } on UserNotFoundException {
      return left(UserOnlineStatusFailure());
    }
  }
}
