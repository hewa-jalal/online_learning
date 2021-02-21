import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:online_learning/features/chat/data/models/message_model.dart';

abstract class ChatRemoteDataSource {
  Future<Unit> sendMessage(String message);
}

@LazySingleton(as: ChatRemoteDataSource)
class FireStoreChatRemoteDataSource extends ChatRemoteDataSource {
  final messagesCollection = FirebaseFirestore.instance.collection('messages');

  @override
  Future<Unit> sendMessage(String message) async {
    final messageModel = MessageModel(message: message);
    messagesCollection.add(messageModel.toDocument());
    return unit;
  }
}
