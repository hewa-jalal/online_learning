import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

class HomeworkSubmitEntity extends Equatable {
  final String fileUrl;
  final String userId;
  final String note;
  final int submitDate;

  HomeworkSubmitEntity({
    @required this.userId,
    @required this.submitDate,
    this.fileUrl,
    this.note,
  });

  @override
  List<Object> get props => [userId, fileUrl, note, submitDate];

  @override
  bool get stringify => true;
}
