import 'package:dartz/dartz.dart';

import 'package:online_learning/features/user/core/errors/failures.dart';
import 'package:online_learning/features/user/core/params/user_params.dart';
import 'package:online_learning/features/user/core/usecase/use_case.dart';
import 'package:online_learning/features/user/domain/entites/user.dart';
import 'package:online_learning/features/user/domain/repositories/user_repository.dart';

class GetUser extends UseCase<UserEntity, UserParam> {
  final UserRepository userRepository;

  GetUser(this.userRepository);

  @override
  Future<Either<Failure, UserEntity>> call(UserParam params) {
    return userRepository.getUser(params.id);
  }
}
