import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../core/errors/failures.dart';
import '../../core/params/user_params.dart';
import '../../core/usecase/use_case.dart';
import '../entites/user.dart';
import '../repositories/user_repository.dart';

@lazySingleton
class GetUser extends UseCase<UserEntity, UserParam> {
  final UserRepository? userRepository;

  GetUser(this.userRepository);

  @override
  Future<Either<Failure, UserEntity>> call(UserParam params) {
    return userRepository!.getUser(params.id);
  }
}
