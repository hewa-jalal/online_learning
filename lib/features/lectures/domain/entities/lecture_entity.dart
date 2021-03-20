import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

class LectureEntity extends Equatable {
  final String fileUrl;
  final String title;
  final String description;
  final List<String> submittedUsers;

  LectureEntity({
    @required this.fileUrl,
    @required this.title,
    @required this.description,
    @required this.submittedUsers,
  });

  @override
  List<Object> get props => [title, fileUrl, description, submittedUsers];

  @override
  bool get stringify => true;
}
