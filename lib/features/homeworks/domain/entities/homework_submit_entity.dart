import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

class HomeworkSubmitEntity extends Equatable {
  final String fileUrl;
  final String userId;
  final String note;

  HomeworkSubmitEntity({
    @required this.userId,
    this.fileUrl,
    this.note,
  });

  @override
  List<Object> get props => [userId, fileUrl, note];

  @override
  bool get stringify => true;
}
