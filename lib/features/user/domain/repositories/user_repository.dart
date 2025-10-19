import 'package:dartz/dartz.dart';

import '../../core/errors/failures.dart';
import '../entites/user.dart';

abstract class UserRepository {
  Future<Either<UserNotFoundFailure, UserEntity>> getUser(int id, String password);
  Future<Either<Failure, Unit>> updateUserTime(int id);
  Future<Either<Failure, Unit>> userOnlineStatus(int id, bool isOnline);
  Future<Either<Failure, List<UserEntity>>> getAllUsers();
}
