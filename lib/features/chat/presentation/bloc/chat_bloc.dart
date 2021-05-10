import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:file_picker/file_picker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:online_learning/features/chat/data/models/message_model.dart';

import 'package:online_learning/features/chat/domain/repositories/chat_repository.dart';
import 'package:online_learning/features/chat/presentation/bloc/cubit/cubit/imageuploader_cubit.dart';

part 'chat_event.dart';
part 'chat_state.dart';
part 'chat_bloc.freezed.dart';

@injectable
class ChatBloc extends Bloc<ChatEvent, ChatState> {
  // final SendMessage sendMessage;
  // final GetAllMessages getAllMessages;
  final ChatRepository chatRepository;
  ChatBloc({
    // @required this.sendMessage,
    // @required this.getAllMessages,
    @required this.chatRepository,
  }) : super(_Initial());

  @override
  Stream<ChatState> mapEventToState(
    ChatEvent event,
  ) async* {
    yield* event.map(
      started: (e) async* {},
      sendMessage: (e) async* {
        chatRepository.sendMessage(
          message: e.message,
          fromUserId: e.fromUserId,
        );
        // sendMessage(
        //   MessageParams(
        //     message: e.message,
        //     fromUserId: e.fromUserId,
        //   ),
        // );
        add(ChatEvent.getAllMessages());
      },
      getAllMessages: (e) async* {
        final messages = await chatRepository.getAllMessages();
        yield messages.fold(
          (failure) => ChatState.messageFailure(),
          (messages) => ChatState.allMessagesLoaded(allMessages: messages),
        );
      },
      sendImageMessage: (e) async* {
        final result = await FilePicker.platform.pickFiles(
          type: FileType.image,
        );
        // e.imageUploaderCubit.setToLoading();

        await chatRepository.sendImageMessage(
          message: e.message,
          fromUserId: e.fromUserId,
          imageUrl: result.files.single.path,
          imageUploaderCubit: e.imageUploaderCubit,
        );

        // e.imageUploaderCubit.setToIdle();

        add(ChatEvent.getAllMessages());
      },
    );
  }
}
