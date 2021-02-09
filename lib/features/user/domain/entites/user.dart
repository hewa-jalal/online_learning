import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

class UserEntity extends Equatable {
  final String fullName;
  final String id;
  final String role;
  final String dept;
  final int stage;

  const UserEntity({
    @required this.id,
    @required this.role,
    @required this.stage,
    @required this.dept,
    @required this.fullName,
  });

  @override
  List<Object> get props => [id, role, stage, dept, fullName];

  @override
  bool get stringify => true;
}
