import 'package:equatable/equatable.dart';

class MessageEntity extends Equatable {
  final String? message;
  final String? fromUserId;
  final String? timestamp;
  final String? imageUrl;

  MessageEntity({
    required this.message,
    required this.fromUserId,
    this.timestamp,
    this.imageUrl,
  });

  @override
  List<Object?> get props => [message, fromUserId, timestamp];
}
