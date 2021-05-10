import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:online_learning/core/lecture_task.dart';
import 'package:online_learning/features/chat/data/models/message_model.dart';
import 'package:online_learning/features/chat/presentation/bloc/cubit/cubit/imageuploader_cubit.dart';

abstract class ChatRemoteDataSource {
  Future<Unit> sendMessage(
    String message,
    String fromUserId,
  );

  Future<Unit> sendImageMessage({
    @required String imageUrl,
    @required String fromUserId,
    @required ImageUploaderCubit imageUploaderCubit,
  });
  Future<List<Message>> getAllMessages();
}

@LazySingleton(as: ChatRemoteDataSource)
class FireStoreChatRemoteDataSource extends ChatRemoteDataSource {
  final CustomUploadTask lectureTask;

  final messagesCollection = FirebaseFirestore.instance.collection('messages');
  final storageRef = FirebaseStorage.instance.ref();

  FireStoreChatRemoteDataSource(this.lectureTask);

  @override
  Future<Unit> sendMessage(
    String message,
    String fromUserId,
  ) async {
    final messageModel = TextMessage(
      message,
      DateTime.now().millisecondsSinceEpoch,
      fromUserId,
    );
    messagesCollection.add(messageModel.toMap());
    return unit;
  }

  @override
  Future<List<Message>> getAllMessages() async {
    final querySnapshot =
        await messagesCollection.orderBy('timeStamp', descending: true).get();
    return querySnapshot.docs.map((doc) => Message.fromFirestore(doc)).toList();
  }

  @override
  Future<Unit> sendImageMessage({
    @required String imageUrl,
    @required String fromUserId,
    @required ImageUploaderCubit imageUploaderCubit,
  }) async {
    imageUploaderCubit.setToLoading();

    lectureTask.task = storageRef
        .messageImagesStorage(DateTime.now().toIso8601String())
        .putFile(File(imageUrl));

    // at first we just need to add an placeholder for the image
    // until we get the downloadUrl
    final testModel = ImageMessage(
      imageUrl: 'placeHolder',
      senderId: '21',
      timeStamp: DateTime.now().millisecondsSinceEpoch,
    );

    final docRef = await messagesCollection.add(testModel.toMap());

    // getting the downloadUrl
    lectureTask.task.then((taskSnap) async {
      final downloadUrl = await taskSnap.ref.getDownloadURL();

      final messageModel = ImageMessage(
        imageUrl: downloadUrl,
        senderId: fromUserId,
        timeStamp: DateTime.now().millisecondsSinceEpoch,
      );

      messagesCollection.doc(docRef.id).set(messageModel.toMap());

      imageUploaderCubit.setToIdle();
    });

    return unit;
  }
}

extension StorageReferenceX on Reference {
  Reference messageImagesStorage(String title) =>
      child('messageImages').child(title);
}
