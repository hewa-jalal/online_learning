class UserNotFoundException implements Exception {
  final String message;

  UserNotFoundException({required this.message});
}

class MessageException implements Exception {}

class LectureException implements Exception {}
