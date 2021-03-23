import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  @override
  List<Object> get props => [];
}

class UserNotFoundFailure extends Failure {}

class MessageFailure extends Failure {}

class LectureFailure extends Failure {}

class HomeworkFailure extends Failure {}
