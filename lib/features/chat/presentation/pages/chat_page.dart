import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:dash_chat/dash_chat.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_learning/features/user/presentation/bloc/user_auth_bloc.dart';

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<UserAuthBloc, UserAuthState>(
        builder: (context, state) {
          print('state ${state}');
          return state.maybeMap(
            usersLoaded: (usersLoadedState) => ListView.builder(
              itemCount: usersLoadedState.users.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Text(usersLoadedState.users[index].fullName),
                    Text(usersLoadedState.users[index].id),
                  ],
                );
              },
            ),
            orElse: () => Center(
              child: ElevatedButton(
                onPressed: () =>
                    context.read<UserAuthBloc>().add(UserAuthEvent.getUsers()),
                child: Text('get users'),
              ),
            ),
          );
        },
      ),
    );
  }
}



// DashChat(
//               user: ChatUser(
//                 firstName: 'hewa',
//               ),
//               onSend: (_) {},
//               messages: [
//                 ChatMessage(
//                   text: 'message',
//                   user: ChatUser(firstName: 'gg'),
//                 )
//               ],
//             ),