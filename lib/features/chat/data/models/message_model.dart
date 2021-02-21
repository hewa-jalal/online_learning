import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

import 'package:online_learning/features/chat/domain/entities/message_entity.dart';

class MessageModel extends MessageEntity {
  final String message;
  MessageModel({
    @required this.message,
  }) : super(message: message);

  Map<String, dynamic> toDocument() {
    return {
      'message': message,
    };
  }

  factory MessageModel.fromSnapshot(DocumentSnapshot snap) {
    final snapData = snap.data();
    return MessageModel(message: snapData['message']);
  }
}
