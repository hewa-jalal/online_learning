part of 'chat_bloc.dart';

@freezed
abstract class ChatState with _$ChatState {
  const factory ChatState.initial() = _Initial;
  const factory ChatState.allMessagesLoaded({
    required List<Message> allMessages,
  }) = _AllMessagesLoaded;
  const factory ChatState.messageFailure() = _MessageFailure;
}
