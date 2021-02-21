import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

import 'package:online_learning/features/chat/domain/entities/message_entity.dart';

class MessageModel extends MessageEntity {
  final String message;
  final String fromUserId;
  final String timestamp;
  MessageModel({
    @required this.message,
    @required this.fromUserId,
    this.timestamp,
  }) : super(
          message: message,
          fromUserId: fromUserId,
          timestamp: timestamp,
        );

  Map<String, dynamic> toDocument() {
    return {
      'message': message,
      'timestamp': DateTime.now().millisecondsSinceEpoch.toString(),
      'fromUserId': fromUserId,
    };
  }

  factory MessageModel.fromSnapshot(DocumentSnapshot snap) {
    final snapData = snap.data();
    return MessageModel(
      message: snapData['message'],
      fromUserId: snapData['fromUserId'],
      timestamp: snapData['timestamp'].toString(),
    );
  }
}
