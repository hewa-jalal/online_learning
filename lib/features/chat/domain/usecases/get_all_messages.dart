import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:online_learning/features/chat/domain/entities/message_entity.dart';
import 'package:online_learning/features/chat/domain/repositories/chat_repository.dart';
import 'package:online_learning/features/user/core/errors/failures.dart';
import 'package:online_learning/features/user/core/usecase/use_case.dart';

@lazySingleton
class GetAllMessages extends UseCase<List<MessageEntity>, NoParams> {
  final ChatRepository chatRepository;

  GetAllMessages({@required this.chatRepository});
  @override
  Future<Either<Failure, List<MessageEntity>>> call(NoParams noParams) {
    return chatRepository.getAllMessages();
  }
}
