import 'package:flutter/material.dart';
import 'package:dash_chat/dash_chat.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_learning/features/chat/presentation/bloc/chat_bloc.dart';
import 'package:online_learning/features/user/domain/entites/user.dart';
import 'package:online_learning/features/user/presentation/bloc/user_auth_bloc.dart';
import 'package:jiffy/jiffy.dart';

class ChatPage extends StatelessWidget {
  final UserEntity userEntity;

  const ChatPage({Key key, @required this.userEntity}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserAuthBloc, UserAuthState>(builder: (context, state) {
      return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            context.read<ChatBloc>().add(
                  ChatEvent.sendMessage(
                    message: '3',
                    fromUserId: userEntity.id,
                  ),
                );
          },
        ),
        body: BlocBuilder<ChatBloc, ChatState>(
          builder: (context, state) {
            return state.map(
              initial: (state) => Center(
                child: ElevatedButton(
                  onPressed: () =>
                      context.read<ChatBloc>().add(ChatEvent.getAllMessages()),
                  child: Text('get all messages'),
                ),
              ),
              allMessagesLoaded: (state) => ListView.builder(
                itemCount: state.allMessages.length,
                itemBuilder: (context, index) {
                  final date = DateTime.fromMillisecondsSinceEpoch(
                    int.parse(state.allMessages[index].timestamp),
                  );
                  return Column(
                    children: [
                      Text(
                        state.allMessages[index].message,
                      ),
                      // Text(
                      //   '${Jiffy(date).yMMMd} ${Jiffy(date).Hm}',
                      // ),
                      // Text(
                      //   state.allMessages[index].fromUserId,
                      // ),
                    ],
                  );
                },
              ),
              messageFailure: (state) => Text('Failed to load messages'),
            );
          },
        ),
        // body: BlocBuilder<UserAuthBloc, UserAuthState>(
        //   builder: (context, state) {
        //     return state.maybeMap(
        //       usersLoaded: (usersLoadedState) => ListView.builder(
        //         itemCount: usersLoadedState.users.length,
        //         itemBuilder: (context, index) {
        //           final user = usersLoadedState.users[index];
        //           return Column(
        //             children: [
        //               Text(user.fullName),
        //               Text(user.id),
        //             ],
        //           );
        //         },
        //       ),
        //       orElse: () => Center(
        //         child: ElevatedButton(
        //           onPressed: () =>
        //               context.read<UserAuthBloc>().add(UserAuthEvent.getUsers()),
        //           child: Text('get users'),
        //         ),
        //       ),
        //     );
        //   },
        // ),
      );
    });
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