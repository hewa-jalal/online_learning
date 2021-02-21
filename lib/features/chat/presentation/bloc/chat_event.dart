part of 'chat_bloc.dart';

@freezed
abstract class ChatEvent with _$ChatEvent {
  const factory ChatEvent.started() = _Started;
  const factory ChatEvent.sendMessage({@required String message}) =
      _SendMessage;
}
