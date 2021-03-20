import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:dash_chat/dash_chat.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_inner_drawer/inner_drawer.dart';
import 'package:foldable_sidebar/foldable_sidebar.dart';
import 'package:online_learning/features/chat/presentation/bloc/chat_bloc.dart';
import 'package:online_learning/features/user/domain/entites/user.dart';
import 'package:online_learning/features/user/presentation/bloc/user_auth_bloc.dart';
import 'package:timeago/timeago.dart' as timeago;

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

  UserEntity get user => widget.userEntity;
  final _controller = TextEditingController();
  GlobalKey<ScaffoldState> _drawerKey = GlobalKey();
  final GlobalKey<InnerDrawerState> _innerDrawerKey =
      GlobalKey<InnerDrawerState>();

  FSBStatus drawerStatus;

  Future getNewImage() async {
    final result = await FilePicker.platform.pickFiles(type: FileType.image);
    if (result != null) {
      _image = File(result.files.single.path);
    }
  }

  @override
  Widget build(BuildContext context) {
    final chatBloc = context.read<ChatBloc>();
    if (ModalRoute.of(context).isCurrent) {
      chatBloc.add(ChatEvent.getAllMessages());
    }

    return BlocBuilder<UserAuthBloc, UserAuthState>(
      builder: (context, state) {
        return SafeArea(
          child: InnerDrawer(
            rightAnimationType: InnerDrawerAnimation.quadratic,
            key: _innerDrawerKey,
            swipe: false,
            rightChild: _UsersList(),
            scaffold: Scaffold(
              key: _drawerKey,
              appBar: AppBar(
                actions: [
                  IconButton(
                    onPressed: () => _innerDrawerKey.currentState.open(),
                    icon: Icon(Feather.users),
                  ),
                ],
              ),
              body: BlocBuilder<ChatBloc, ChatState>(
                builder: (context, state) {
                  return state.map(
                    initial: (state) => CircularProgressIndicator(),
                    allMessagesLoaded: (state) {
                      final messages = state.allMessages
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
                          print('imageUrl => $url');
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
                          // to refresh the messages
                          chatBloc.add(ChatEvent.getAllMessages());
                        },
                        messages: messages,
                      );
                    },
                    messageFailure: (state) => Text('Failed to load messages'),
                  );
                },
              ),
            ),
          ),
        );
      },
    );
  }
}

class _UsersList extends StatelessWidget {
  const _UsersList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (ModalRoute.of(context).isCurrent) {
      context.read<UserAuthBloc>().add(UserAuthEvent.getAllUsers());
    }
    return BlocBuilder<UserAuthBloc, UserAuthState>(
      builder: (context, state) {
        final usersList = state.users;
        return Material(
          child: ListView.separated(
            separatorBuilder: (context, index) => Divider(
              thickness: 1.5,
              color: Colors.grey[700],
            ),
            itemCount: usersList.length,
            itemBuilder: (context, index) {
              final user = usersList[index];
              var date =
                  DateTime.fromMillisecondsSinceEpoch(user.lastSeenInEpoch);
              var ago = timeago.format(date);
              var isOnline = user.isOnline;
              var diffDate = DateTime.now().difference(date);
              print('diffDate => $diffDate');

              return ListTile(
                leading: CircleAvatar(child: Text(user.fullName[0])),
                title: Text(user.fullName),
                subtitle: isOnline
                    ? Row(
                        children: [
                          Icon(Icons.circle, color: Colors.green),
                          Text('Online'),
                        ],
                      )
                    : Text('last seen $ago'),
              );
            },
          ),
        );
      },
    );
  }
}
