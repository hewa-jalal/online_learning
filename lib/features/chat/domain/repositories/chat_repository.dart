import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:online_learning/features/user/core/errors/failures.dart';

abstract class ChatRepository {
  Future<Either<Failure, Unit>> sendMessage({
    @required String message,
  });
}
