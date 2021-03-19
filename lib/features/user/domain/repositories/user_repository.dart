import 'package:dartz/dartz.dart';
import 'package:online_learning/features/user/core/errors/failures.dart';
import 'package:online_learning/features/user/domain/entites/user.dart';

abstract class UserRepository {
  Future<Either<Failure, UserEntity>> getUser(int id);
  Future<Either<Failure, Unit>> updateUserTime(int id);
  Future<Either<Failure, List<UserEntity>>> getAllUsers();
}
