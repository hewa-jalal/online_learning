import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/lecture_task.dart';
import '../../presentation/bloc/cubit/cubit/imageuploader_cubit.dart';
import '../models/message_model.dart';

abstract class ChatRemoteDataSource {
  Future<Unit> sendMessage(
    String message,
    String fromUserId,
    String courseTitle,
  );

  Future<Unit> sendImageMessage({
    required String? imageUrl,
    required String? fromUserId,
    required String? courseTitle,
    required ImageUploaderCubit imageUploaderCubit,
  });

  Future<List<Message>> getAllMessages();
  sendFileMessage({
    required String? fileUrl,
    required String? courseTitle,
    required String fileName,
    required String? fromUserId,
    required int fileSize,
    required ImageUploaderCubit imageUploaderCubit,
  });

  Future<List<Message>> getAllMessagesByCourse(String courseTitle);
}

@LazySingleton(as: ChatRemoteDataSource)
class FireStoreChatRemoteDataSource extends ChatRemoteDataSource {
  final CustomUploadTask? lectureTask;

  final messagesCollection = FirebaseFirestore.instance.collection('messages');
  final storageRef = FirebaseStorage.instance.ref();

  FireStoreChatRemoteDataSource(this.lectureTask);

  @override
  Future<Unit> sendMessage(
    String message,
    String fromUserId,
    String courseTitle,
  ) async {
    final messageModel = TextMessage(
      message,
      DateTime.now().millisecondsSinceEpoch,
      fromUserId,
    );
    messagesCollection
        .doc(courseTitle)
        .collection('messages')
        .add(messageModel.toMap());
    return unit;
  }

  @override
  Future<List<Message>> getAllMessages() async {
    final querySnapshot =
        await messagesCollection.orderBy('timeStamp', descending: true).get();
    return querySnapshot.docs.map((doc) => Message.fromFirestore(doc)).toList();
  }

  @override
  Future<List<Message>> getAllMessagesByCourse(String courseTitle) async {
    final querySnapshot = await messagesCollection
        .doc(courseTitle)
        .collection('messages')
        .orderBy('timeStamp', descending: true)
        .get();

    return querySnapshot.docs.map((doc) => Message.fromFirestore(doc)).toList();
  }

  @override
  Future<Unit> sendImageMessage({
    required String? imageUrl,
    required String? fromUserId,
    required String? courseTitle,
    required ImageUploaderCubit imageUploaderCubit,
  }) async {
    imageUploaderCubit.setToLoading();

    lectureTask!.task = storageRef
        .messageImagesStorage(DateTime.now().toIso8601String())
        .putFile(File(imageUrl!));

    // at first we just need to add an placeholder for the image
    // until we get the downloadUrl
    final tempModel = ImageMessage(
      imageUrl: 'placeHolder',
      senderId: fromUserId,
      timeStamp: DateTime.now().millisecondsSinceEpoch,
    );

    final docRef = await messagesCollection
        .doc(courseTitle)
        .collection('messages')
        .add(tempModel.toMap());

    // getting the downloadUrl
    lectureTask!.task.then((taskSnap) async {
      final downloadUrl = await taskSnap.ref.getDownloadURL();

      final messageModel = ImageMessage(
        imageUrl: downloadUrl,
        senderId: fromUserId,
        timeStamp: DateTime.now().millisecondsSinceEpoch,
      );

      messagesCollection
          .doc(courseTitle)
          .collection('messages')
          .doc(docRef.id)
          .set(messageModel.toMap());

      imageUploaderCubit.setToIdle();
    });

    return unit;
  }

  @override
  Future<Unit> sendFileMessage({
    required String? fileUrl,
    required String fileName,
    required String? courseTitle,
    required String? fromUserId,
    required int? fileSize,
    required ImageUploaderCubit imageUploaderCubit,
  }) async {
    imageUploaderCubit.setToLoading();

    lectureTask!.task = storageRef
        // DateTime.now().toIso8601String() = document name in FirebaseStorage
        .messageFilesStorage(DateTime.now().toIso8601String())
        .putFile(File(fileUrl!));

    // at first we just need to add an placeholder for the file
    // until we get the downloadUrl
    final tempModel = FileMessage(
      fileUrl: 'placeHolder',
      fileName: fileName,
      senderId: fromUserId,
      timeStamp: DateTime.now().millisecondsSinceEpoch,
      fileSize: fileSize,
    );

    final docRef = await messagesCollection
        .doc(courseTitle)
        .collection('messages')
        .add(tempModel.toMap());

    // getting the downloadUrl
    lectureTask!.task.then((taskSnap) async {
      final downloadUrl = await taskSnap.ref.getDownloadURL();

      final fileModel = FileMessage(
        fileUrl: downloadUrl,
        senderId: fromUserId,
        fileSize: fileSize,
        fileName: fileName,
        timeStamp: DateTime.now().millisecondsSinceEpoch,
      );

      messagesCollection
          .doc(courseTitle)
          .collection('messages')
          .doc(docRef.id)
          .set(fileModel.toMap());

      imageUploaderCubit.setToIdle();
    });

    return unit;
  }
}

extension StorageReferenceX on Reference {
  Reference messageImagesStorage(String title) =>
      child('messageImages').child(title);

  Reference messageFilesStorage(String title) =>
      child('messageFiles').child(title);
}
