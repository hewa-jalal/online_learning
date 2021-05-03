import 'dart:async';
import 'dart:io';

import 'package:bubble/bubble.dart';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_inner_drawer/inner_drawer.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:hawk_fab_menu/hawk_fab_menu.dart';
import 'package:online_learning/features/chat/data/models/message_model.dart';
import 'package:online_learning/features/chat/domain/entities/message_entity.dart';
import 'package:online_learning/features/chat/presentation/bloc/chat_bloc.dart';
import 'package:online_learning/features/chat/presentation/bloc/cubit/attachment_cubit.dart';
import 'package:online_learning/features/user/domain/entites/user.dart';
import 'package:online_learning/features/user/presentation/bloc/user_auth_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
  final _scrollController = ScrollController();
  final _innerDrawerKey = GlobalKey<InnerDrawerState>();

  @override
  Widget build(BuildContext context) {
    final chatBloc = context.read<ChatBloc>();
    chatBloc.add(ChatEvent.getAllMessages());
    return BlocBuilder<UserAuthBloc, UserAuthState>(builder: (context, state) {
      return SafeArea(
        child: InnerDrawer(
          swipe: false,
          key: _innerDrawerKey,
          rightAnimationType: InnerDrawerAnimation.quadratic,
          rightChild: _UsersList(),
          scaffold: Scaffold(
            // floatingActionButton: Row(
            //   crossAxisAlignment: CrossAxisAlignment.start,
            //   children: <Widget>[
            //     SpeedDial(
            //       children: [
            //         SpeedDialChild(
            //           label: 'Image',
            //           child: Icon(Icons.home),
            //         ),
            //       ],
            //     ),
            //   ],
            // ),
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
                    // final messages = state.allMessages
                    //     .map(
                    //       (msg) => ChatMessage(
                    //         text: msg.message,
                    //         user: ChatUser(
                    //           uid: msg.fromUserId,
                    //         ),
                    //         image: msg.imageUrl,
                    //       ),
                    //     )
                    //     .toList();
                    // return _CustomDashChat(
                    //   user: user,
                    //   chatBloc: chatBloc,
                    //   messages: messages,
                    // );
                    // final messages = state.allMessages
                    //     .map(
                    //       (message) {
                    //         return _MessageWidget(
                    //           message: message,
                    //           user: user,
                    //         );
                    //       },
                    //     )
                    //     .toList()
                    //     .reversed
                    //     .toList();
                    final messages = state.allMessages.reversed.toList();

                    return Column(
                      children: [
                        Expanded(
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                Container(
                                  height: 0.9.sh,
                                  // child: ListView(
                                  //   padding: const EdgeInsets.all(8),
                                  //   controller: _scrollController,
                                  //   children: messages,
                                  // ),
                                  child: _MessageWidget(
                                    messages: messages,
                                    user: user,
                                    chatListController: _scrollController,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 0.1.sh,
                          child: Align(
                            alignment: FractionalOffset.bottomCenter,
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 10.0),
                              child: _SendMessageTextField(
                                chatBloc: chatBloc,
                                user: user,
                                chatListController: _scrollController,
                              ),
                            ),
                          ),
                        ),
                        if (context.watch<AttachmentCubit>().state) ...[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              _AttachmentSelection(
                                icon: Entypo.images,
                                label: 'Image',
                              ),
                              _AttachmentSelection(
                                icon: Icons.file_copy_outlined,
                                label: 'File',
                              ),
                            ],
                          )
                        ]
                      ],
                    );
                  },
                  messageFailure: (state) => Text('Failed to load messages'),
                );
              },
            ),
          ),
        ),
      );
    });
  }
}

class _AttachmentSelection extends StatelessWidget {
  final IconData icon;
  final String label;
  const _AttachmentSelection({
    Key key,
    @required this.icon,
    @required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipOval(
          child: Material(
            color: Colors.blue,
            child: InkWell(
              splashColor: Colors.red,
              child: SizedBox(
                width: 56,
                height: 56,
                child: Icon(icon),
              ),
              onTap: () async {
                final result = await FilePicker.platform.pickFiles();
                if (result != null) {
                  final file = File(result.files.single.path);

                  Image.file(file);
                }

                // context.read<ChatBloc>().add(
                //       ChatEvent.sendImageMessage(
                //         message: 'message',
                //         fromUserId: '21',
                //         imageUrl: 'imageUrl',
                //       ),
                //     );
              },
            ),
          ),
        ),
        Text(label),
      ],
    );
  }
}

class _MessageWidget extends StatelessWidget {
  final UserEntity user;
  final List<Message> messages;
  final ScrollController chatListController;

  const _MessageWidget({
    Key key,
    @required this.user,
    @required this.messages,
    @required this.chatListController,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: messages.length,
      shrinkWrap: true,
      controller: chatListController,
      itemBuilder: (context, index) {
        final msg = messages[index];
        if (msg is ImageMessage) {
          return Bubble(
            child: Image.network(
              msg.imageUrl,
              // placeholder: (context, url) => CircularProgressIndicator(),
              // errorWidget: (context, url, error) => Icon(Icons.error),
            ),
            style: BubbleStyle(
              nip: BubbleNip.rightCenter,
              color: Color.fromARGB(255, 225, 255, 199),
              borderColor: Colors.blue,
              borderWidth: 1,
              margin: BubbleEdges.only(top: 8, left: 50),
              alignment: Alignment.topRight,
            ),
          );
        } else if (msg is TextMessage) {
          return _CustomChatBubble(
            textMessage: msg,
            user: user,
          );
        }
        return Text('Woah what did you send');
      },
      // children: messages.map((msg) {
      //   if (msg is ImageMessage) {
      //     return Bubble(
      //       child: Image.network(msg.imageUrl),
      //       style: BubbleStyle(
      //         nip: BubbleNip.rightCenter,
      //         color: Color.fromARGB(255, 225, 255, 199),
      //         borderColor: Colors.blue,
      //         borderWidth: 1,
      //         margin: BubbleEdges.only(top: 8, left: 50),
      //         alignment: Alignment.topRight,
      //       ),
      //     );
      //   } else if (msg is TextMessage) {
      //     return _CustomChatBubble(
      //       textMessage: msg,
      //       user: user,
      //     );
      //   }
      // }).toList(),
    );
  }
}

class _CustomChatBubble extends StatelessWidget {
  static const styleSomebody = BubbleStyle(
    nip: BubbleNip.leftCenter,
    color: Colors.white,
    borderColor: Colors.blue,
    borderWidth: 1,
    margin: BubbleEdges.only(top: 8, right: 50),
    alignment: Alignment.topLeft,
  );

  static const styleMe = BubbleStyle(
    nip: BubbleNip.rightCenter,
    color: Color.fromARGB(255, 225, 255, 199),
    borderColor: Colors.blue,
    borderWidth: 1,
    margin: BubbleEdges.only(top: 8, left: 50),
    alignment: Alignment.topRight,
  );

  const _CustomChatBubble({
    Key key,
    @required this.textMessage,
    @required this.user,
  }) : super(key: key);

  final TextMessage textMessage;
  final UserEntity user;

  @override
  Widget build(BuildContext context) {
    return textMessage.senderId == user.id
        ? _ChatRowMe(
            message: textMessage,
            user: user,
            styleMe: styleMe,
          )
        : _ChatRowSomebody(
            message: textMessage,
            user: user,
            styleSomebody: styleSomebody,
          );
  }
}

class _ChatRowMe extends StatelessWidget {
  const _ChatRowMe({
    Key key,
    @required this.message,
    @required this.user,
    @required this.styleMe,
  }) : super(key: key);

  final TextMessage message;
  final UserEntity user;
  final BubbleStyle styleMe;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Bubble(
          child: Text(
            message.text,
            style: TextStyle(color: Colors.black),
          ),
          style: styleMe,
        ),
        //* no need for avatar when it's you

        // CircleAvatar(
        //   child: Text(user.fullName[0]),
        // ),
      ],
    );
  }
}

class _ChatRowSomebody extends StatelessWidget {
  const _ChatRowSomebody({
    Key key,
    @required this.message,
    @required this.user,
    @required this.styleSomebody,
  }) : super(key: key);

  final TextMessage message;

  final UserEntity user;
  final BubbleStyle styleSomebody;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          child: Text('H'),
        ),
        Bubble(
          child: Text(message.text),
          style: styleSomebody,
        ),
      ],
    );
  }
}

class _SendMessageTextField extends StatefulWidget {
  const _SendMessageTextField({
    Key key,
    @required this.chatBloc,
    @required this.user,
    @required this.chatListController,
  }) : super(key: key);

  final ChatBloc chatBloc;
  final UserEntity user;
  final ScrollController chatListController;

  @override
  __SendMessageTextFieldState createState() => __SendMessageTextFieldState();
}

class __SendMessageTextFieldState extends State<_SendMessageTextField> {
  final _controller = TextEditingController();
  final _focusNode = FocusNode();
  var _expandTextField = false;

  var msg = '';
  @override
  Widget build(BuildContext context) {
    final isAttachmentOpen = context.watch<AttachmentCubit>().state;
    // return Stack(
    //   alignment: Alignment.centerRight,
    //   children: <Widget>[
    //     Align(
    //       alignment: Alignment.centerLeft,
    //       child: IconButton(
    //         alignment: Alignment.centerLeft,
    //         icon: Icon(Icons.dialpad),
    //         onPressed: () {
    //           // do something
    //         },
    //       ),
    //     ),
    //     TextField(
    //     ),
    //   ],
    // );

    return Row(
      children: [
        Expanded(
          flex: 5,
          child: TextField(
            controller: _controller,
            focusNode: _focusNode,
            onTap: () => setState(() => _expandTextField = true),
            onChanged: (val) => msg = val.trim(),
            decoration: InputDecoration(
              prefixIcon: IconButton(
                splashRadius: 19,
                icon: Icon(isAttachmentOpen ? Icons.close : Ionicons.md_attach),
                onPressed: () {
                  context
                      .read<AttachmentCubit>()
                      .changeStatus(!isAttachmentOpen);
                },
              ),
              filled: true,
              border: OutlineInputBorder(
                borderRadius: const BorderRadius.all(
                  const Radius.circular(20.0),
                ),
              ),
              suffixIcon: IconButton(
                icon: Icon(Icons.send),
                onPressed: () {
                  widget.chatBloc.add(
                    ChatEvent.sendMessage(
                      message: msg,
                      fromUserId: widget.user.id,
                    ),
                  );
                  // to referesh the messages
                  widget.chatBloc.add(ChatEvent.getAllMessages());
                  _controller.clear();
                  // ! maybe use setState
                  setState(() {
                    widget.chatListController.animateTo(
                      widget.chatListController.position.maxScrollExtent,
                      duration: const Duration(milliseconds: 200),
                      curve: Curves.easeIn,
                    );
                  });
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}

// class _CustomDashChat extends StatefulWidget {
//   const _CustomDashChat({
//     Key key,
//     @required this.user,
//     @required this.chatBloc,
//     @required this.messages,
//   }) : super(key: key);

//   final UserEntity user;
//   final ChatBloc chatBloc;
//   final List<ChatMessage> messages;

//   @override
//   __CustomDashChatState createState() => __CustomDashChatState();
// }

// class __CustomDashChatState extends State<_CustomDashChat> {
//   File _image;
//   Future getNewImage() async {
//     final result = await FilePicker.platform.pickFiles(type: FileType.image);
//     if (result != null) {
//       _image = File(result.files.single.path);
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return DashChat(
//       messageImageBuilder: (url, [_]) {
//         return CachedNetworkImage(
//           imageUrl: url,
//           placeholder: (context, str) => CircularProgressIndicator(),
//           fit: BoxFit.fill,
//         );
//       },
//       chatFooterBuilder: () => IconButton(
//         icon: Icon(Icons.image),
//         onPressed: getNewImage,
//       ),
//       inverted: true,
//       user: ChatUser(
//         uid: widget.user.id,
//         firstName: widget.user.fullName,
//         color: Colors.yellow,
//       ),
//       onSend: (msg) {
//         widget.chatBloc.add(
//           ChatEvent.sendMessage(
//             message: msg.text,
//             fromUserId: msg.user.uid,
//           ),
//         );
//         // to referesh the messages
//         widget.chatBloc.add(ChatEvent.getAllMessages());
//       },
//       messages: widget.messages,
//     );
//   }
// }

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
        final _usersList = state.users;

        return Material(
          color: Colors.blueGrey[900],
          child: ListView.separated(
            separatorBuilder: (context, index) => Divider(
              thickness: 1.5,
              color: Colors.grey[700],
            ),
            itemCount: _usersList.length,
            itemBuilder: (context, index) {
              final user = _usersList[index];
              final date =
                  DateTime.fromMillisecondsSinceEpoch(user.lastSeenInEpoch);
              final ago = timeago.format(date);
              final isOnline = user.isOnline;
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
