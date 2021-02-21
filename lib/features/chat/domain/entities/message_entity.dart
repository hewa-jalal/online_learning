import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

class MessageEntity extends Equatable {
  final String message;

  MessageEntity({@required this.message});

  @override
  List<Object> get props => [message];
}
