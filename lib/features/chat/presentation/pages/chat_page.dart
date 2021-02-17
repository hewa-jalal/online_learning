import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:dash_chat/dash_chat.dart';

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DashChat(
        user: ChatUser(
          firstName: 'hewa',
        ),
        onSend: (_) {},
        messages: [
          ChatMessage(
            text: 'message',
            user: ChatUser(firstName: 'gg'),
          )
        ],
      ),
    );
  }
}
