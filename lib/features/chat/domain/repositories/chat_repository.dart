import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:online_learning/features/chat/data/models/message_model.dart';
import 'package:online_learning/features/user/core/errors/failures.dart';

abstract class ChatRepository {
  Future<Either<Failure, Unit>> sendMessage({
    @required String message,
    @required String fromUserId,
  });

  Future<Either<Failure, List<Message>>> getAllMessages();
}
