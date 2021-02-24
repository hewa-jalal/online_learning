import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:online_learning/features/chat/domain/repositories/chat_repository.dart';
import 'package:online_learning/features/user/core/errors/failures.dart';
import 'package:online_learning/features/user/core/usecase/use_case.dart';

@lazySingleton
class SendMessage extends UseCase<Unit, MessageParams> {
  final ChatRepository chatRepository;

  SendMessage({@required this.chatRepository});
  @override
  Future<Either<Failure, Unit>> call(MessageParams params) {
    return chatRepository.sendMessage(
      message: params.message,
      fromUserId: params.fromUserId,
      imageUrl: params.imageUrl,
    );
  }
}

class MessageParams extends Equatable {
  final String message;
  final String fromUserId;
  final String imageUrl;

  MessageParams({
    @required this.message,
    @required this.fromUserId,
    this.imageUrl,
  });
  @override
  List<Object> get props => [message, fromUserId];
}
