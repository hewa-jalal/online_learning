import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:online_learning/features/chat/data/models/message_model.dart';
import 'package:online_learning/features/chat/domain/entities/message_entity.dart';

abstract class ChatRemoteDataSource {
  Future<Unit> sendMessage(String message, String fromUserId);
  Future<List<MessageEntity>> getAllMessages();
}

@LazySingleton(as: ChatRemoteDataSource)
class FireStoreChatRemoteDataSource extends ChatRemoteDataSource {
  final messagesCollection = FirebaseFirestore.instance.collection('messages');

  @override
  Future<Unit> sendMessage(String message, String fromUserId) async {
    final messageModel = MessageModel(message: message, fromUserId: fromUserId);
    messagesCollection.add(messageModel.toDocument());
    return unit;
  }

  @override
  Future<List<MessageEntity>> getAllMessages() async {
    final querySnapshot =
        await messagesCollection.orderBy('message', descending: true).get();
    return querySnapshot.docs
        .map((doc) => MessageModel.fromSnapshot(doc))
        .toList();
  }
}
