import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

class LectureEntity extends Equatable {
  final String fileUrl;

  LectureEntity({@required this.fileUrl});

  @override
  List<Object> get props => [fileUrl];

  @override
  bool get stringify => true;
}
