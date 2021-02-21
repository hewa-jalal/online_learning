part of 'chat_bloc.dart';

@freezed
abstract class ChatState with _$ChatState {
  const factory ChatState.initial() = _Initial;
}
