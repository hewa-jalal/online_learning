part of 'chat_bloc.dart';

@freezed
abstract class ChatEvent with _$ChatEvent {
  const factory ChatEvent.started() = _Started;
  const factory ChatEvent.sendMessage({
    @required String message,
    @required String fromUserId,
  }) = _SendMessage;
  const factory ChatEvent.sendImageMessage({
    @required String message,
    @required String fromUserId,
    @required String imageUrl,
  }) = _SendImageMessage;
  const factory ChatEvent.getAllMessages() = _GetAllMessages;
}
