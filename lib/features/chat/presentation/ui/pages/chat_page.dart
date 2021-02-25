import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:dash_chat/dash_chat.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:online_learning/features/chat/presentation/bloc/chat_bloc.dart';
import 'package:online_learning/features/user/domain/entites/user.dart';
import 'package:online_learning/features/user/presentation/bloc/user_auth_bloc.dart';

class ChatPage extends StatefulWidget {
  final UserEntity userEntity;

  const ChatPage({
    Key key,
    @required this.userEntity,
  }) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  File _image;
  final picker = ImagePicker();

  UserEntity get user => widget.userEntity;
  final _controller = TextEditingController();

  Future getNewImage() async {
    final result = await FilePicker.platform.pickFiles(type: FileType.image);
    if (result != null) {
      _image = File(result.files.single.path);
    }
  }

  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final chatBloc = context.read<ChatBloc>();
    return BlocBuilder<UserAuthBloc, UserAuthState>(builder: (context, state) {
      return Scaffold(
        // floatingActionButton: FloatingActionButton(
        //   onPressed: () {
        //     context.read<ChatBloc>().add(
        //           ChatEvent.sendMessage(
        //             message: '3',
        //             fromUserId: widget.userEntity.id,
        //           ),
        //         );
        //   },
        // ),
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
              allMessagesLoaded: (state) {
                var messages = state.allMessages
                    .map(
                      (msg) => ChatMessage(
                        text: msg.message,
                        user: ChatUser(
                          uid: msg.fromUserId,
                        ),
                        image: msg.imageUrl,
                      ),
                    )
                    .toList();
                return DashChat(
                  messageImageBuilder: (url, [_]) {
                    return CachedNetworkImage(
                      imageUrl: url,
                      placeholder: (context, str) =>
                          CircularProgressIndicator(),
                      fit: BoxFit.fill,
                    );
                  },
                  chatFooterBuilder: () => IconButton(
                    icon: Icon(Icons.image),
                    onPressed: getNewImage,
                  ),
                  inverted: true,
                  user: ChatUser(
                    uid: user.id,
                    firstName: user.fullName,
                    color: Colors.yellow,
                  ),
                  onSend: (msg) {
                    chatBloc.add(
                      ChatEvent.sendMessage(
                        message: msg.text,
                        fromUserId: msg.user.uid,
                      ),
                    );
                    chatBloc.add(ChatEvent.getAllMessages());
                  },
                  messages: messages,
                );
              },
              messageFailure: (state) => Text('Failed to load messages'),
            );
          },
        ),

        // final date = DateTime.fromMillisecondsSinceEpoch(
        //             int.parse(state.allMessages[index].timestamp),
        //           );
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
