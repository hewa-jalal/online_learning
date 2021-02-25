import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:online_learning/features/user/domain/entites/user.dart';

class LectureEntity extends Equatable {
  final String fileUrl;
  final String title;
  final String description;
  final UserEntity user;

  LectureEntity({
    @required this.fileUrl,
    @required this.title,
    @required this.description,
    @required this.user,
  });

  @override
  List<Object> get props => [fileUrl];

  @override
  bool get stringify => true;
}
