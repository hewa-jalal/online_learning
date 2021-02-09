import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:online_learning/domain/entites/user.dart';

class UserModel extends UserEntity {
  final String fullName;
  final String id;
  final String role;
  final String dept;
  final int stage;

  const UserModel({
    @required this.id,
    @required this.role,
    @required this.stage,
    @required this.dept,
    @required this.fullName,
  }) : super(
          fullName: fullName,
          id: id,
          role: role,
          dept: dept,
          stage: stage,
        );

  Map<String, dynamic> toDocument() {
    return {
      'role': role,
      'dept': dept,
      'stage': stage,
    };
  }

  factory UserModel.fromSnapshot(DocumentSnapshot snap) {
    return UserModel(
      id: snap.id,
      role: snap['role'] as String,
      dept: snap['dept'] as String,
      stage: snap['stage'] as int,
      fullName: snap['fullName'] as String,
    );
  }
}
