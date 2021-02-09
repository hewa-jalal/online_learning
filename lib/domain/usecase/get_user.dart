import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:online_learning/core/errors/failures.dart';
import 'package:online_learning/core/usecase/use_case.dart';
import 'package:online_learning/domain/entites/user.dart';
import 'package:online_learning/domain/repositories/user_repository.dart';

class GetUser extends UseCase<UserEntity, UserParam> {
  final UserRepository userRepository;

  GetUser(this.userRepository);

  @override
  Future<Either<Failure, UserEntity>> call(UserParam params) {
    return userRepository.getUser(params.id);
  }
}

class UserParam extends Equatable {
  final int id;

  const UserParam({@required this.id});

  @override
  List<Object> get props => [id];
}
