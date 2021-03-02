import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

class LectureEntity extends Equatable {
  final String fileUrl;
  final String title;
  final String description;

  LectureEntity({
    @required this.fileUrl,
    @required this.title,
    @required this.description,
  });

  @override
  List<Object> get props => [fileUrl];

  @override
  bool get stringify => true;
}
