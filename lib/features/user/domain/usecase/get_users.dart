import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:online_learning/features/user/core/errors/failures.dart';
import 'package:online_learning/features/user/core/usecase/use_case.dart';
import 'package:online_learning/features/user/domain/entites/user.dart';
import 'package:online_learning/features/user/domain/repositories/user_repository.dart';

@lazySingleton
class GetAllUsers extends UseCase<List<UserEntity>, NoParams> {
  final UserRepository userRepository;

  GetAllUsers(this.userRepository);

  @override
  Future<Either<Failure, List<UserEntity>>> call(NoParams noParams) {
    return userRepository.getAllUsers();
  }
}
