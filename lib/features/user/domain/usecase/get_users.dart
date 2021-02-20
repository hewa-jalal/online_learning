import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:online_learning/features/user/core/errors/failures.dart';
import 'package:online_learning/features/user/core/usecase/use_case.dart';
import 'package:online_learning/features/user/domain/entites/user.dart';
import 'package:online_learning/features/user/domain/repositories/user_repository.dart';

class GetUsers extends UseCase<List<UserEntity>, NoParams> {
  final UserRepository userRepository;

  GetUsers(this.userRepository);

  @override
  Future<Either<Failure, List<UserEntity>>> call(NoParams noParams) {
    return userRepository.getUsers();
  }
}
