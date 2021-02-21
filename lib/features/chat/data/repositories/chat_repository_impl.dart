import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:online_learning/features/chat/data/datasources/chat_remote_data_source.dart';

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
  Future<Either<Failure, Unit>> sendMessage({String message}) async {
    try {
      remoteDataSource.sendMessage(message);
      return right(unit);
    } on MessageException {
      return left(MessageFailure());
    }
  }
}
