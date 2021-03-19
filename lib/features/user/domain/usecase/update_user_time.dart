import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import 'package:online_learning/features/user/core/errors/failures.dart';
import 'package:online_learning/features/user/core/params/user_params.dart';
import 'package:online_learning/features/user/core/usecase/use_case.dart';
import 'package:online_learning/features/user/domain/repositories/user_repository.dart';

@lazySingleton
class UpdateUserTime extends UseCase<Unit, UserParam> {
  final UserRepository userRepository;

  UpdateUserTime(this.userRepository);

  @override
  Future<Either<Failure, Unit>> call(UserParam params) {
    return userRepository.updateUserTime(params.id);
  }
}
