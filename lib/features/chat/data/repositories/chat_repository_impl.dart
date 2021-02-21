import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:online_learning/features/chat/data/datasources/chat_remote_data_source.dart';
import 'package:online_learning/features/chat/domain/entities/message_entity.dart';

import 'package:online_learning/features/chat/domain/repositories/chat_repository.dart';
import 'package:online_learning/features/user/core/errors/exceptions.dart';
import 'package:online_learning/features/user/core/errors/failures.dart';

@LazySingleton(as: ChatRepository)
class ChatRepositoryImpl extends ChatRepository {
  final ChatRemoteDataSource remoteDataSource;
  ChatRepositoryImpl({
    @required this.remoteDataSource,
  });

  @override
  Future<Either<Failure, Unit>> sendMessage({
    @required String message,
    @required String fromUserId,
  }) async {
    try {
      remoteDataSource.sendMessage(message, fromUserId);
      return right(unit);
    } on MessageException {
      return left(MessageFailure());
    }
  }

  @override
  Future<Either<Failure, List<MessageEntity>>> getAllMessages() async {
    try {
      final messageList = await remoteDataSource.getAllMessages();
      return right(messageList);
    } on MessageException {
      return left(MessageFailure());
    }
  }
}
