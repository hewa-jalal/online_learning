import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

class UserParam extends Equatable {
  final int id;

  const UserParam({@required this.id});

  @override
  List<Object> get props => [id];
}
