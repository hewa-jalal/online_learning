import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:online_learning/features/chat/domain/usecases/send_message.dart';

part 'chat_event.dart';
part 'chat_state.dart';
part 'chat_bloc.freezed.dart';

@injectable
class ChatBloc extends Bloc<ChatEvent, ChatState> {
  final SendMessage sendMessage;
  ChatBloc({@required this.sendMessage}) : super(_Initial());

  @override
  Stream<ChatState> mapEventToState(
    ChatEvent event,
  ) async* {
    yield* event.map(
      started: (e) async* {},
      sendMessage: (e) async* {
        print('event message ${e.message}');
        sendMessage(MessageParams(message: e.message));
      },
    );
  }
}
