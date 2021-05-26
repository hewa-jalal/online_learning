import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:file_picker/file_picker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../data/models/message_model.dart';
import '../../domain/repositories/chat_repository.dart';
import 'cubit/cubit/imageuploader_cubit.dart';

part 'chat_bloc.freezed.dart';
part 'chat_event.dart';
part 'chat_state.dart';

@injectable
class ChatBloc extends Bloc<ChatEvent, ChatState> {
  // final SendMessage sendMessage;
  // final GetAllMessages getAllMessages;
  final ChatRepository? chatRepository;
  ChatBloc({
    // @required this.sendMessage,
    // @required this.getAllMessages,
    required this.chatRepository,
  }) : super(_Initial());

  @override
  Stream<ChatState> mapEventToState(
    ChatEvent event,
  ) async* {
    yield* event.map(
      started: (e) async* {},
      sendMessage: (e) async* {
        chatRepository!.sendMessage(
          message: e.message,
          fromUserId: e.fromUserId,
          courseTitle: e.courseTitle,
        );
        // sendMessage(
        //   MessageParams(
        //     message: e.message,
        //     fromUserId: e.fromUserId,
        //   ),
        // );
        add(ChatEvent.getAllMessagesByCourse(e.courseTitle));
      },
      getAllMessages: (e) async* {
        final messages = await chatRepository!.getAllMessages();
        yield messages.fold(
          (failure) => ChatState.messageFailure(),
          (messages) => ChatState.allMessagesLoaded(allMessages: messages),
        );
      },
      sendImageMessage: (e) async* {
        final result = await (FilePicker.platform.pickFiles(
            // type: FileType.image,
            ));
        // e.imageUploaderCubit.setToLoading();

        await chatRepository!.sendImageMessage(
          message: e.message,
          fromUserId: e.fromUserId,
          imageUrl: result!.files.single.path,
          imageUploaderCubit: e.imageUploaderCubit,
          courseTitle: e.courseTitle,
        );

        // e.imageUploaderCubit.setToIdle();

        add(ChatEvent.getAllMessagesByCourse(e.courseTitle));
      },
      sendFileMessage: (e) async* {
        final result = await (FilePicker.platform.pickFiles());

        await chatRepository!.sendFileMessage(
          message: e.message,
          fromUserId: e.fromUserId,
          fileUrl: result!.files.single.path!,
          fileSize: result.files.single.size!,
          fileName: result.files.single.name!,
          imageUploaderCubit: e.imageUploaderCubit,
          courseTitle: e.courseTitle,
        );

        add(ChatEvent.getAllMessagesByCourse(e.courseTitle));
      },
      getAllMessagesByCourse: (e) async* {
        final messages =
            await chatRepository!.getAllMessagesByCourse(e.courseTitle);
        yield messages.fold(
          (failure) => ChatState.messageFailure(),
          (messages) => ChatState.allMessagesLoaded(allMessages: messages),
        );
      },
    );
  }
}
