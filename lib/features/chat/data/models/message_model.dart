import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

import 'package:online_learning/features/chat/domain/entities/message_entity.dart';

class MessageModel extends MessageEntity {
  final String message;
  final String fromUserId;
  final String timestamp;
  final String imageUrl;
  MessageModel({
    @required this.message,
    @required this.fromUserId,
    this.timestamp,
    this.imageUrl,
  }) : super(
          message: message,
          fromUserId: fromUserId,
          timestamp: timestamp,
          imageUrl: imageUrl,
        );

  Map<String, dynamic> toDocument() {
    return {
      'message': message,
      'timestamp': DateTime.now().millisecondsSinceEpoch.toString(),
      'fromUserId': fromUserId,
      'imageUrl': imageUrl,
    };
  }

  factory MessageModel.fromSnapshot(DocumentSnapshot snap) {
    final snapData = snap.data();
    return MessageModel(
      message: snapData['message'],
      fromUserId: snapData['fromUserId'],
      timestamp: snapData['timestamp'].toString(),
      imageUrl: snapData['imageUrl'],
    );
  }
}

abstract class Message {
  final int timeStamp;
  final String senderId;
  Message({
    @required this.timeStamp,
    @required this.senderId,
  });

  factory Message.fromFirestore(DocumentSnapshot doc) {
    final int type = doc.data()['type'];
    print('type $type');
    Message message;

    switch (type) {
      case 0:
        message = TextMessage.fromFirestore(doc);
        break;
      case 1:
        message = ImageMessage.fromFirestore(doc);
        break;
      case 2:
        message = VideoMessage.fromFirestore(doc);
        break;
      case 3:
        message = FileMessage.fromFirestore(doc);
        break;
    }
    return message;
  }

  Map<String, dynamic> toMap();
}

class TextMessage extends Message {
  String text;

  TextMessage(this.text, timeStamp, senderId)
      : super(
          timeStamp: timeStamp,
          senderId: senderId,
        );

  factory TextMessage.fromFirestore(DocumentSnapshot doc) {
    final data = doc.data();
    return TextMessage(
      data['text'],
      data['timeStamp'],
      data['senderId'],
    );
  }

  @override
  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = Map();
    map['text'] = text;
    map['timeStamp'] = timeStamp;
    map['senderId'] = senderId;
    map['type'] = 0;
    return map;
  }
}

class ImageMessage extends Message {
  String imageUrl;

  ImageMessage({
    @required this.imageUrl,
    @required timeStamp,
    @required senderId,
  }) : super(
          timeStamp: timeStamp,
          senderId: senderId,
        );

  factory ImageMessage.fromFirestore(DocumentSnapshot doc) {
    final data = doc.data();
    return ImageMessage(
      timeStamp: data['timeStamp'],
      senderId: data['senderId'],
      imageUrl: data['imageUrl'],
    );
  }

  @override
  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = Map();
    map['imageUrl'] = imageUrl;
    map['timeStamp'] = timeStamp;
    map['senderId'] = senderId;
    map['type'] = 1;
    return map;
  }
}

class VideoMessage extends Message {
  String videoUrl;

  VideoMessage(this.videoUrl, timeStamp, senderId)
      : super(
          timeStamp: timeStamp,
          senderId: senderId,
        );

  factory VideoMessage.fromFirestore(DocumentSnapshot doc) {
    final data = doc.data();
    return VideoMessage(
      data['videoUrl'],
      data['timeStamp'],
      data['senderId'],
    );
  }

  @override
  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = Map();
    map['videoUrl'] = videoUrl;
    map['timeStamp'] = timeStamp;
    map['senderId'] = senderId;
    map['type'] = 2;
    return map;
  }
}

class FileMessage extends Message {
  String fileUrl;

  FileMessage(this.fileUrl, timeStamp, senderId)
      : super(
          timeStamp: timeStamp,
          senderId: senderId,
        );

  factory FileMessage.fromFirestore(DocumentSnapshot doc) {
    final data = doc.data();
    return FileMessage(
      data['fileUrl'],
      data['timeStamp'],
      data['senderId'],
    );
  }

  @override
  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = Map();
    map['fileUrl'] = fileUrl;
    map['timeStamp'] = timeStamp;
    map['senderId'] = senderId;
    map['type'] = 3;
    return map;
  }
}
