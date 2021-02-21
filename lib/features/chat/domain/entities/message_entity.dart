import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

class MessageEntity extends Equatable {
  final String message;
  final String fromUserId;
  final String timestamp;

  MessageEntity({
    @required this.message,
    @required this.fromUserId,
    this.timestamp,
  });

  @override
  List<Object> get props => [message, fromUserId, timestamp];
}
