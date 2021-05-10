import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../core/errors/failures.dart';
import '../../core/params/user_params.dart';
import '../../core/usecase/use_case.dart';
import '../repositories/user_repository.dart';

@lazySingleton
class UpdateUserTime extends UseCase<Unit, UserParam> {
  final UserRepository userRepository;

  UpdateUserTime(this.userRepository);

  @override
  Future<Either<Failure, Unit>> call(UserParam params) {
    return userRepository.updateUserTime(params.id);
  }
}
