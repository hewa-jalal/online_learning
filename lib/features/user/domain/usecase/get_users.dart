import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../core/errors/failures.dart';
import '../../core/usecase/use_case.dart';
import '../entites/user.dart';
import '../repositories/user_repository.dart';

@lazySingleton
class GetAllUsers extends UseCase<List<UserEntity>, NoParams> {
  final UserRepository? userRepository;

  GetAllUsers(this.userRepository);

  @override
  Future<Either<Failure, List<UserEntity>>> call(NoParams noParams) {
    return userRepository!.getAllUsers();
  }
}
