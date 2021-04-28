import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:online_learning/features/chat/data/models/message_model.dart';

abstract class ChatRemoteDataSource {
  Future<Unit> sendMessage(
    String message,
    String fromUserId,
  );

  Future<Unit> sendImageMessage(
    String imageUrl,
    String fromUserId,
  );
  Future<List<Message>> getAllMessages();
}

@LazySingleton(as: ChatRemoteDataSource)
class FireStoreChatRemoteDataSource extends ChatRemoteDataSource {
  final messagesCollection = FirebaseFirestore.instance.collection('messages');
  final storageRef = FirebaseStorage.instance.ref();

  @override
  Future<Unit> sendMessage(
    String message,
    String fromUserId,
  ) async {
    print('send message remote');
    final messageModel = TextMessage(
      message,
      10,
      fromUserId,
    );
    messagesCollection.add(messageModel.toMap());
    return unit;
  }

  @override
  Future<List<Message>> getAllMessages() async {
    print('all messages remote');
    final querySnapshot =
        await messagesCollection.orderBy('timeStamp', descending: true).get();
    return querySnapshot.docs.map((doc) => Message.fromFirestore(doc)).toList();
  }

  @override
  Future<Unit> sendImageMessage(String imageUrl, String fromUserId) async {
    final messageModel = ImageMessage(
      imageUrl,
      fromUserId,
      10,
    );

    messagesCollection.add(messageModel.toMap());
    return unit;
  }
}
