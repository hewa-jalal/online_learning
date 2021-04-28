import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:online_learning/features/chat/data/models/message_model.dart';
import 'package:online_learning/features/chat/data/repositories/chat_repository_impl.dart';
import 'package:online_learning/features/chat/domain/entities/message_entity.dart';
import 'package:online_learning/features/chat/domain/repositories/chat_repository.dart';
import 'package:online_learning/features/chat/domain/usecases/get_all_messages.dart';
import 'package:online_learning/features/chat/domain/usecases/send_message.dart';
import 'package:online_learning/features/user/core/usecase/use_case.dart';

part 'chat_event.dart';
part 'chat_state.dart';
part 'chat_bloc.freezed.dart';

@injectable
class ChatBloc extends Bloc<ChatEvent, ChatState> {
  final SendMessage sendMessage;
  final GetAllMessages getAllMessages;
  // final ChatRepository chatRepository;
  ChatBloc({
    @required this.sendMessage,
    @required this.getAllMessages,
    // @required this.chatRepository,
  }) : super(_Initial());

  @override
  Stream<ChatState> mapEventToState(
    ChatEvent event,
  ) async* {
    yield* event.map(
      started: (e) async* {},
      sendMessage: (e) async* {
        // chatRepository.sendMessage(
        //   message: e.message,
        //   fromUserId: e.fromUserId,
        // );
        sendMessage(
          MessageParams(
            message: e.message,
            fromUserId: e.fromUserId,
          ),
        );
      },
      getAllMessages: (e) async* {
        final messages = await getAllMessages(NoParams());
        yield messages.fold(
          (failure) => ChatState.messageFailure(),
          (messages) => ChatState.allMessagesLoaded(allMessages: messages),
        );
      },
    );
  }
}
