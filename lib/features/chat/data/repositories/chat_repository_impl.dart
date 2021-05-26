import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../datasources/chat_remote_data_source.dart';
import '../models/message_model.dart';

import '../../domain/repositories/chat_repository.dart';
import '../../presentation/bloc/cubit/cubit/imageuploader_cubit.dart';
import '../../../user/core/errors/exceptions.dart';
import '../../../user/core/errors/failures.dart';

@LazySingleton(as: ChatRepository)
class ChatRepositoryImpl extends ChatRepository {
  final ChatRemoteDataSource? remoteDataSource;
  ChatRepositoryImpl({
    required this.remoteDataSource,
  });

  @override
  Future<Either<Failure, Unit>> sendMessage({
    required String message,
    required String fromUserId,
    required String courseTitle,
  }) async {
    try {
      remoteDataSource!.sendMessage(message, fromUserId, courseTitle);
      return right(unit);
    } on MessageException {
      return left(MessageFailure());
    }
  }

  @override
  Future<Either<Failure, List<Message>>> getAllMessages() async {
    try {
      final messageList = await remoteDataSource!.getAllMessages();
      return right(messageList);
    } on MessageException {
      return left(MessageFailure());
    }
  }

  @override
  Future<Either<Failure, List<Message>>> getAllMessagesByCourse(
      String courseTitle) async {
    try {
      final messageList =
          await remoteDataSource!.getAllMessagesByCourse(courseTitle);
      return right(messageList);
    } on MessageException {
      return left(MessageFailure());
    }
  }

  @override
  Future<Either<Failure, Unit>> sendImageMessage({
    String? message,
    String? fromUserId,
    String? imageUrl,
    required String? courseTitle,
    required ImageUploaderCubit imageUploaderCubit,
  }) async {
    try {
      await remoteDataSource!.sendImageMessage(
        imageUrl: imageUrl,
        fromUserId: fromUserId,
        imageUploaderCubit: imageUploaderCubit,
        courseTitle: courseTitle,
      );
      return right(unit);
    } on MessageException {
      return left(MessageFailure());
    }
  }

  @override
  Future<Either<Failure, Unit>> sendFileMessage({
    required String message,
    required String fromUserId,
    required String? fileUrl,
    required String? courseTitle,
    required String fileName,
    required int fileSize,
    required ImageUploaderCubit imageUploaderCubit,
  }) async {
    try {
      await remoteDataSource!.sendFileMessage(
        fileUrl: fileUrl,
        fromUserId: fromUserId,
        imageUploaderCubit: imageUploaderCubit,
        fileSize: fileSize,
        fileName: fileName,
        courseTitle: courseTitle,
      );
      return right(unit);
    } on MessageException {
      return left(MessageFailure());
    }
  }
}
