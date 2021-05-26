import 'package:cloud_firestore/cloud_firestore.dart';

import '../../domain/entites/user.dart';

enum UserRole {
  student,
  teacher,
}

class UserModel extends UserEntity {
  final String? fullName;
  final String? password;
  final String? id;
  final String? role;
  final String? dept;
  final int? stage;
  final int? lastSeenInEpoch;
  final bool? isOnline;

  const UserModel({
    required this.id,
    required this.password,
    required this.role,
    required this.stage,
    required this.dept,
    required this.fullName,
    required this.lastSeenInEpoch,
    required this.isOnline,
  }) : super(
          fullName: fullName,
          password: password,
          id: id,
          role: role,
          dept: dept,
          stage: stage,
          lastSeenInEpoch: lastSeenInEpoch,
          isOnline: isOnline,
        );

  Map<String, dynamic> toDocument() {
    return {
      'role': role,
      'dept': dept,
      'stage': stage,
      'fullName': fullName,
      'lastSeenInEpoch': lastSeenInEpoch,
      'isOnline': isOnline,
      'password': password,
    };
  }

  factory UserModel.fromSnapshot(DocumentSnapshot<Map<String, dynamic>> snap) {
    final data = snap.data()!;

    return UserModel(
      id: snap.id,
      fullName: data['fullName'],
      role: data['role'],
      dept: data['dept'],
      stage: data['stage'],
      lastSeenInEpoch: data['lastSeenInEpoch'],
      isOnline: data['isOnline'],
      password: data['password'],
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
      isOnline: json['isOnline'],
      password: json['password'],
    );
  }

  factory UserModel.empty() {
    return UserModel(
      id: '0',
      fullName: '',
      role: '',
      dept: '',
      stage: 0,
      lastSeenInEpoch: 0,
      isOnline: false,
      password: '',
    );
  }
}
