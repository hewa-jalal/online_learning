import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

class HomeworkEntity extends Equatable {
  final String fileUrl;
  final String title;
  final String description;
  final int dueDate;

  HomeworkEntity({
    @required this.title,
    @required this.dueDate,
    this.fileUrl,
    this.description,
  });

  @override
  List<Object> get props => [title, fileUrl, description, dueDate];

  @override
  bool get stringify => true;
}
