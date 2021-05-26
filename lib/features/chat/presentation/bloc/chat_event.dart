part of 'chat_bloc.dart';

@freezed
abstract class ChatEvent with _$ChatEvent {
  const factory ChatEvent.started() = _Started;
  const factory ChatEvent.sendMessage({
    required String message,
    required String fromUserId,
    required String courseTitle,
  }) = _SendMessage;
  const factory ChatEvent.sendImageMessage({
    required String message,
    required String courseTitle,
    required String fromUserId,
    required String imageUrl,
    required ImageUploaderCubit imageUploaderCubit,
  }) = _SendImageMessage;

  const factory ChatEvent.sendFileMessage({
    required String message,
    required String fromUserId,
    required String courseTitle,
    required ImageUploaderCubit imageUploaderCubit,
  }) = _SendFileMessage;

  const factory ChatEvent.getAllMessages() = _GetAllMessages;
  const factory ChatEvent.getAllMessagesByCourse(String courseTitle) =
      _GetAllMessagesByCourse;
}
