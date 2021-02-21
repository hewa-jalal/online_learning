import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:online_learning/features/chat/domain/entities/message_entity.dart';
import 'package:online_learning/features/chat/domain/repositories/chat_repository.dart';
import 'package:online_learning/features/user/core/errors/failures.dart';
import 'package:online_learning/features/user/core/usecase/use_case.dart';

@lazySingleton
class SendMessage extends UseCase<Unit, MessageParams> {
  final ChatRepository chatRepository;

  SendMessage({@required this.chatRepository});
  @override
  Future<Either<Failure, Unit>> call(MessageParams params) {
    return chatRepository.sendMessage(message: params.message);
  }
}

class MessageParams extends Equatable {
  final String message;

  MessageParams({@required this.message});
  @override
  List<Object> get props => throw UnimplementedError();
}
