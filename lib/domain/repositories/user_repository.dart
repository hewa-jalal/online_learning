import 'package:dartz/dartz.dart';
import 'package:online_learning/core/errors/failures.dart';
import 'package:online_learning/domain/entites/user.dart';

abstract class UserRepository {
  Future<Either<Failure, UserEntity>> getUser(int id);
}
