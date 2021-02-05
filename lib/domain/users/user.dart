import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

class UserEntity extends Equatable {
  final String id;
  final String role;
  final String dept;
  final int stage;

  const UserEntity({
    @required this.id,
    @required this.role,
    @required this.stage,
    @required this.dept,
  });

  @override
  List<Object> get props => [id, role, stage, dept];

  @override
  bool get stringify => true;

  Map<String, dynamic> toDocument() {
    return {
      'role': role,
      'dept': dept,
      'stage': stage,
    };
  }

  factory UserEntity.fromSnapshot(DocumentSnapshot snap) {
    return UserEntity(
      id: snap.id,
      role: snap['role'] as String,
      dept: snap['dept'] as String,
      stage: snap['stage'] as int,
    );
  }
}
