import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

import 'package:online_learning/features/user/core/errors/failures.dart';
import 'package:online_learning/features/user/core/usecase/use_case.dart';
import 'package:online_learning/features/user/domain/repositories/user_repository.dart';

@lazySingleton
class UserOnlineStatus extends UseCase<Unit, OnlineParams> {
  final UserRepository userRepository;

  UserOnlineStatus(this.userRepository);

  @override
  Future<Either<Failure, Unit>> call(OnlineParams params) {
    return userRepository.userOnlineStatus(params.id, params.isOnline);
  }
}

class OnlineParams extends Equatable {
  final int id;
  final bool isOnline;

  OnlineParams({
    @required this.id,
    @required this.isOnline,
  });
  @override
  List<Object> get props => throw UnimplementedError();
}
