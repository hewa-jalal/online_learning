import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../data/models/message_model.dart';
import '../repositories/chat_repository.dart';
import '../../../user/core/errors/failures.dart';
import '../../../user/core/usecase/use_case.dart';

@lazySingleton
class GetAllMessages extends UseCase<List<Message>, NoParams> {
  final ChatRepository? chatRepository;

  GetAllMessages({required this.chatRepository});
  @override
  Future<Either<Failure, List<Message>>> call(NoParams noParams) {
    return chatRepository!.getAllMessages();
  }
}
