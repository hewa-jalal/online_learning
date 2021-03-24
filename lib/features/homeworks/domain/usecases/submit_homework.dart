import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:online_learning/features/homeworks/domain/repository/homework_repository.dart';

import '../../../user/core/errors/failures.dart';
import '../../../user/core/usecase/use_case.dart';

@lazySingleton
class SubmitHomework extends UseCase<Unit, SubmitParams> {
  final HomeworkRepository homeworkRepository;

  SubmitHomework(this.homeworkRepository);
  @override
  Future<Either<Failure, Unit>> call(SubmitParams params) {
    return homeworkRepository.submitHomework(
      userId: params.userId,
      fileUrl: params.fileUrl,
      note: params.note,
      homeworkTitle: params.homeworkTitle,
      submitDate: params.submitDate,
    );
  }
}

class SubmitParams extends Equatable {
  final String userId;
  final String fileUrl;
  final String note;
  final String homeworkTitle;
  final int submitDate;

  SubmitParams({
    @required this.userId,
    @required this.fileUrl,
    @required this.note,
    @required this.homeworkTitle,
    @required this.submitDate,
  });

  @override
  List<Object> get props => [userId, fileUrl, note, homeworkTitle, submitDate];
}
