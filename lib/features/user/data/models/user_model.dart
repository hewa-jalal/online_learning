import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:online_learning/features/user/domain/entites/user.dart';

class UserModel extends UserEntity {
  final String fullName;
  final String id;
  final String role;
  final String dept;
  final int stage;
  final int lastSeenInEpoch;

  const UserModel({
    @required this.id,
    @required this.role,
    @required this.stage,
    @required this.dept,
    @required this.fullName,
    @required this.lastSeenInEpoch,
  }) : super(
          fullName: fullName,
          id: id,
          role: role,
          dept: dept,
          stage: stage,
          lastSeenInEpoch: lastSeenInEpoch,
        );

  Map<String, dynamic> toDocument() {
    return {
      'role': role,
      'dept': dept,
      'stage': stage,
      'fullName': fullName,
      'lastSeenInEpoch': lastSeenInEpoch,
    };
  }

  factory UserModel.fromSnapshot(DocumentSnapshot snap) {
    final snapData = snap.data();

    return UserModel(
      id: snap.id,
      fullName: snapData['fullName'],
      role: snapData['role'],
      dept: snapData['dept'],
      stage: snapData['stage'],
      lastSeenInEpoch: snapData['lastSeenInEpoch'],
    );
  }

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'],
      fullName: json['fullName'],
      role: json['role'],
      dept: json['dept'],
      stage: json['stage'],
      lastSeenInEpoch: json['lastSeenInEpoch'],
    );
  }
}
