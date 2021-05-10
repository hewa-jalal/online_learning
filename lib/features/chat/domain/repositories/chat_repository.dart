import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import '../../data/models/message_model.dart';
import '../../presentation/bloc/cubit/cubit/imageuploader_cubit.dart';
import '../../../user/core/errors/failures.dart';

abstract class ChatRepository {
  Future<Either<Failure, Unit>> sendMessage({
    @required String message,
    @required String fromUserId,
  });

  Future<Either<Failure, Unit>> sendImageMessage({
    @required String message,
    @required String fromUserId,
    @required String imageUrl,
    @required ImageUploaderCubit imageUploaderCubit,
  });

  Future<Either<Failure, List<Message>>> getAllMessages();
}
