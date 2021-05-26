import 'package:dartz/dartz.dart';

import '../../../user/core/errors/failures.dart';
import '../../data/models/message_model.dart';
import '../../presentation/bloc/cubit/cubit/imageuploader_cubit.dart';

abstract class ChatRepository {
  Future<Either<Failure, Unit>> sendMessage({
    required String message,
    required String fromUserId,
    required String courseTitle,
  });

  Future<Either<Failure, Unit>> sendImageMessage({
    required String message,
    required String fromUserId,
    required String? imageUrl,
    required String? courseTitle,
    required ImageUploaderCubit imageUploaderCubit,
  });

  Future<Either<Failure, Unit>> sendFileMessage({
    required String message,
    required String? courseTitle,
    required String fromUserId,
    required String fileUrl,
    required String fileName,
    required int fileSize,
    required ImageUploaderCubit imageUploaderCubit,
  });

  Future<Either<Failure, List<Message>>> getAllMessages();
  Future<Either<Failure, List<Message>>> getAllMessagesByCourse(
    String courseTitle,
  );
}
