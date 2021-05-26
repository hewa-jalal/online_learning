import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import '../../../user/core/errors/failures.dart';
import '../../../user/core/usecase/use_case.dart';
import '../repositories/chat_repository.dart';

@lazySingleton
class SendMessage extends UseCase<Unit, MessageParams> {
  final ChatRepository? chatRepository;

  SendMessage({required this.chatRepository});
  @override
  Future<Either<Failure, Unit>> call(MessageParams params) {
    return chatRepository!.sendMessage(
      courseTitle: params.courseTitle,
      message: params.message,
      fromUserId: params.fromUserId,
    );
  }
}

class MessageParams extends Equatable {
  final String message;
  final String fromUserId;
  final String? imageUrl;
  final String courseTitle;

  MessageParams({
    required this.message,
    required this.fromUserId,
    required this.courseTitle,
    this.imageUrl,
  });
  @override
  List<Object> get props => [message, fromUserId, courseTitle];
}
