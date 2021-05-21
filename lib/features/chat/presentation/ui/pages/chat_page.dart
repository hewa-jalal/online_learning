import 'dart:async';
import 'dart:io';

import 'package:bubble/bubble.dart';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_inner_drawer/inner_drawer.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:nil/nil.dart';
import 'package:octo_image/octo_image.dart';
import '../../../../../core/universal_variables.dart';

import '../../../data/models/message_model.dart';
import '../../bloc/chat_bloc.dart';
import '../../bloc/cubit/cubit/imageuploader_cubit.dart';
import '../../../../lectures/presentation/UI/pages/submit_homework_page.dart';
import '../../../../user/domain/entites/user.dart';
import '../../../../user/presentation/bloc/user_auth_bloc.dart';
import 'package:timeago/timeago.dart' as timeago;

class ChatPage extends StatefulWidget {
  const ChatPage({
    Key? key,
    required this.userEntity,
  }) : super(key: key);

  final UserEntity userEntity;

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final _innerDrawerKey = GlobalKey<InnerDrawerState>();
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();

    // WidgetsBinding.instance.addPostFrameCallback((_) {
    //   _scrollController.jumpTo(_scrollController.position.maxScrollExtent);
    // });
    // Timer.periodic(Duration(milliseconds: 100), (timer) {
    //   if (mounted ) {
    //     _scrollController.jumpTo(_scrollController.position.maxScrollExtent);
    //   } else {
    //     timer.cancel();
    //   }
    // });
  }

  UserEntity get user => widget.userEntity;

  @override
  Widget build(BuildContext context) {
    final imageUploaderCubit = context.read<ImageUploaderCubit>();
    print('imageUploaderCubit.state' + imageUploaderCubit.state.toString());

    final chatBloc = context.read<ChatBloc>();
    if (ModalRoute.of(context)!.isCurrent) {
      chatBloc.add(ChatEvent.getAllMessages());
    }
    return BlocBuilder<UserAuthBloc, UserAuthState>(builder: (context, state) {
      return SafeArea(
        // child: InnerDrawer(
        //   swipe: false,
        //   // key: _innerDrawerKey,
        //   rightAnimationType: InnerDrawerAnimation.quadratic,
        //   // rightChild: _UsersList(),
        //   rightChild: Container(),
        //   scaffold:
        child: Scaffold(
          appBar: AppBar(
            actions: [
              IconButton(
                onPressed: () => _innerDrawerKey.currentState!.open(),
                icon: Icon(FontAwesomeIcons.users),
              ),
            ],
          ),
          body: BlocBuilder<ChatBloc, ChatState>(
            builder: (context, state) {
              return state.map(
                initial: (state) => Center(child: CircularProgressIndicator()),
                allMessagesLoaded: (state) {
                  final messages = state.allMessages.reversed.toList();
                  return Column(
                    children: [
                      Flexible(
                        child: _MessagesListWidget(
                          messages: messages,
                          user: user,
                          chatListController: _scrollController,
                        ),
                      ),
                      // imageUploaderCubit.state == ImageuploaderState.loading()
                      //     ? Bubble(
                      //         child: AspectRatio(
                      //           aspectRatio: 4 / 3,
                      //           child: Center(
                      //             child: CircularProgressIndicator(),
                      //           ),
                      //         ),
                      //       )
                      //     : Container(),
                      Container(
                        child: Align(
                          alignment: FractionalOffset.bottomCenter,
                          child: _SendMessageTextField(
                            chatBloc: chatBloc,
                            user: user,
                            chatListController: _scrollController,
                          ),
                        ),
                      ),
                    ],
                  );
                },
                messageFailure: (state) => Text('Failed to load messages'),
              );
            },
          ),
        ),
      );
    });
  }
}

class _AttachmentSelection extends StatelessWidget {
  const _AttachmentSelection({
    Key? key,
    required this.icon,
    required this.label,
  }) : super(key: key);

  final IconData icon;
  final String label;

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
                  final file = File(result.files.single.path!);

                  Image.file(file);
                }
              },
            ),
          ),
        ),
        Text(label),
      ],
    );
  }
}

class _MessagesListWidget extends StatelessWidget {
  const _MessagesListWidget({
    Key? key,
    required this.user,
    required this.messages,
    required this.chatListController,
  }) : super(key: key);

  final ScrollController chatListController;
  final List<Message>? messages;
  final UserEntity user;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: messages?.length,
      shrinkWrap: true,
      controller: chatListController,
      itemBuilder: (context, index) {
        final msg = messages?[index];
        if (msg is ImageMessage) {
          print('ImageUrl ======> ${msg.imageUrl}');
          return Bubble(
            child: AspectRatio(
              aspectRatio: 4 / 3,
              // child: CachedNetworkImage(
              //   imageUrl: msg.imageUrl,
              // ),
              child: OctoImage(
                  image: CachedNetworkImageProvider(msg.imageUrl!),
                  progressIndicatorBuilder:
                      OctoProgressIndicator.circularProgressIndicator()),
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
    );
  }
}

class _CustomChatBubble extends StatelessWidget {
  const _CustomChatBubble({
    Key? key,
    required this.textMessage,
    required this.user,
  }) : super(key: key);

  static const styleMe = BubbleStyle(
    nip: BubbleNip.rightCenter,
    color: Color.fromARGB(255, 225, 255, 199),
    borderColor: Colors.blue,
    borderWidth: 1,
    margin: BubbleEdges.only(top: 8, left: 50),
    alignment: Alignment.topRight,
  );

  static const styleSomebody = BubbleStyle(
    nip: BubbleNip.leftCenter,
    color: Colors.white,
    borderColor: Colors.blue,
    borderWidth: 1,
    margin: BubbleEdges.only(top: 8, right: 50),
    alignment: Alignment.topLeft,
  );

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
    Key? key,
    required this.message,
    required this.user,
    required this.styleMe,
  }) : super(key: key);

  final TextMessage message;
  final BubbleStyle styleMe;
  final UserEntity user;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Bubble(
          child: Text(
            message.text!,
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
    Key? key,
    required this.message,
    required this.user,
    required this.styleSomebody,
  }) : super(key: key);

  final TextMessage message;
  final BubbleStyle styleSomebody;
  final UserEntity user;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          child: Text('H'),
        ),
        Bubble(
          child: Text(message.text!),
          style: styleSomebody,
        ),
      ],
    );
  }
}

class _SendMessageTextField extends StatefulWidget {
  const _SendMessageTextField({
    Key? key,
    required this.chatBloc,
    required this.user,
    required this.chatListController,
  }) : super(key: key);

  final ChatBloc chatBloc;
  final ScrollController chatListController;
  final UserEntity user;

  @override
  __SendMessageTextFieldState createState() => __SendMessageTextFieldState();
}

class __SendMessageTextFieldState extends State<_SendMessageTextField> {
  var msg = '';

  final _controller = TextEditingController();
  final _focusNode = FocusNode();
  var _isWriting = false;

  void setWritingTo(bool val) {
    setState(() => _isWriting = val);
  }

  @override
  Widget build(BuildContext context) {
    final imageUploaderCubit = context.watch<ImageUploaderCubit>();
    final chatBloc = context.watch<ChatBloc>();

    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
        children: [
          GestureDetector(
            onTap: () => addMediaModal(
              context,
              chatBloc: chatBloc,
              imageUploaderCubit: imageUploaderCubit,
            ),
            child: Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                gradient: UniversalVariables.fabGradient,
                shape: BoxShape.circle,
              ),
              child: Icon(Icons.add),
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Expanded(
            child: TextField(
              controller: _controller,
              focusNode: _focusNode,
              onChanged: (val) {
                val.length > 0 ? setWritingTo(true) : setWritingTo(false);
                msg = val.trim();
              },
              decoration: InputDecoration(
                hintText: 'Type a message',
                hintStyle: TextStyle(
                  color: UniversalVariables.greyColor,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(50.0),
                  ),
                  borderSide: BorderSide(color: Colors.green),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(50.0),
                  ),
                  borderSide: BorderSide(color: APP_PURPlE),
                ),
                border: OutlineInputBorder(
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(50.0),
                  ),
                  borderSide: BorderSide.none,
                ),
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                filled: true,
                fillColor: UniversalVariables.separatorColor,
                suffixIcon: GestureDetector(
                  onTap: () {},
                  child: Icon(Icons.face),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10),
            decoration: BoxDecoration(
              gradient: UniversalVariables.fabGradient,
              shape: BoxShape.circle,
            ),
            child: IconButton(
              icon: Icon(
                Icons.send,
                size: 15,
              ),
              onPressed: () {
                widget.chatBloc.add(
                  ChatEvent.sendMessage(
                    message: msg,
                    fromUserId: '21',
                    // imageUrl: 'someUrl',
                    // imageUploaderCubit: imageUploaderCubit,
                  ),
                );
                _controller.clear();
                setState(() {});
                Timer.periodic(Duration(milliseconds: 100), (timer) {
                  if (mounted && widget.chatListController.hasClients) {
                    widget.chatListController.jumpTo(
                        widget.chatListController.position.maxScrollExtent);
                  } else {
                    timer.cancel();
                  }
                });
              },
            ),
          )
        ],
      ),
    );
  }
}

void addMediaModal(
  context, {
  required ChatBloc chatBloc,
  required ImageUploaderCubit imageUploaderCubit,
}) {
  showModalBottomSheet(
      context: context,
      elevation: 0,
      backgroundColor: UniversalVariables.blackColor,
      builder: (context) {
        return Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(vertical: 15),
              child: Row(
                children: <Widget>[
                  TextButton(
                    child: Icon(
                      Icons.close,
                    ),
                    onPressed: () => Navigator.maybePop(context),
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Content and tools',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              child: ListView(
                children: <Widget>[
                  ModalTile(
                    title: "Media",
                    subtitle: "Share Photos and Video",
                    icon: Icons.image,
                    onTap: () {
                      chatBloc.add(
                        ChatEvent.sendImageMessage(
                          message: 'msgImage',
                          fromUserId: '21',
                          imageUrl: 'someUrl',
                          imageUploaderCubit: imageUploaderCubit,
                        ),
                      );
                      Navigator.pop(context);
                    },
                  ),
                  ModalTile(
                    onTap: () {},
                    title: "File",
                    subtitle: "Share files",
                    icon: Icons.tab,
                  ),
                  ModalTile(
                      onTap: () {},
                      title: "Contact",
                      subtitle: "Share contacts",
                      icon: Icons.contacts),
                  ModalTile(
                      onTap: () {},
                      title: "Location",
                      subtitle: "Share a location",
                      icon: Icons.add_location),
                  ModalTile(
                      onTap: () {},
                      title: "Schedule Call",
                      subtitle: "Arrange a skype call and get reminders",
                      icon: Icons.schedule),
                  ModalTile(
                      onTap: () {},
                      title: "Create Poll",
                      subtitle: "Share polls",
                      icon: Icons.poll)
                ],
              ),
            ),
          ],
        );
      });
}

class ModalTile extends StatelessWidget {
  const ModalTile({
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.onTap,
  });

  final IconData icon;
  final String subtitle;
  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: CustomTile(
        onTap: onTap,
        mini: false,
        leading: Container(
          margin: EdgeInsets.only(right: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: UniversalVariables.receiverColor,
          ),
          padding: EdgeInsets.all(10),
          child: Icon(
            icon,
            color: UniversalVariables.greyColor,
            size: 38,
          ),
        ),
        subtitle: Text(
          subtitle,
          style: TextStyle(
            color: UniversalVariables.greyColor,
            fontSize: 14,
          ),
        ),
        title: Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}

class CustomTile extends StatelessWidget {
  CustomTile({
    required this.leading,
    required this.title,
    this.icon,
    required this.subtitle,
    this.trailing,
    this.margin = const EdgeInsets.all(0),
    this.onTap,
    this.onLongPress,
    this.mini = true,
  });

  final Widget? icon;
  final Widget leading;
  final EdgeInsets margin;
  final bool mini;
  final GestureLongPressCallback? onLongPress;
  final GestureTapCallback? onTap;
  final Widget subtitle;
  final Widget title;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      onLongPress: onLongPress,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: mini ? 10 : 0),
        margin: margin,
        child: Row(
          children: <Widget>[
            leading,
            Expanded(
              child: Container(
                margin: EdgeInsets.only(left: mini ? 10 : 15),
                padding: EdgeInsets.symmetric(vertical: mini ? 3 : 20),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      width: 1,
                      color: UniversalVariables.separatorColor,
                    ),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        title,
                        SizedBox(height: 5),
                        Row(
                          children: <Widget>[
                            icon ?? Container(),
                            subtitle,
                          ],
                        )
                      ],
                    ),
                    trailing ?? Container(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
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
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (ModalRoute.of(context)!.isCurrent) {
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
                  DateTime.fromMillisecondsSinceEpoch(user.lastSeenInEpoch!);
              final ago = timeago.format(date);
              final isOnline = user.isOnline!;
              return ListTile(
                leading: CircleAvatar(child: Text(user.fullName![0])),
                title: Text(user.fullName!),
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
