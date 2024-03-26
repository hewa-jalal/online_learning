import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  @override
  List<Object> get props => [];
}

class UserNotFoundFailure extends Failure {
  final String message;

  UserNotFoundFailure({required this.message});
}

class AllUserFailure extends Failure {}

class UpdateUserTimeFailure extends Failure {}

class UserOnlineStatusFailure extends Failure {}

class MessageFailure extends Failure {}

class LectureFailure extends Failure {}

class LectureDownloadFailure extends Failure {}

class LectureUploadFailure extends Failure {}


class HomeworkFailure extends Failure {}
