import 'package:equatable/equatable.dart';

class UserEntity extends Equatable {
  final String? fullName;
  final String? password;
  final String? id;
  final String? role;
  final String? dept;
  final int? stage;
  final int? lastSeenInEpoch;
  final bool? isOnline;

  const UserEntity({
    required this.id,
    required this.password,
    required this.role,
    required this.stage,
    required this.dept,
    required this.fullName,
    required this.lastSeenInEpoch,
    required this.isOnline,
  });

  @override
  List<Object?> get props => [id, role, stage, dept, fullName, password];

  @override
  bool get stringify => true;

  UserEntity copyWith({
    String? fullName,
    String? id,
    String? role,
    String? dept,
    int? stage,
    int? lastSeenInEpoch,
    bool? isOnline,
  }) {
    return UserEntity(
      fullName: fullName ?? this.fullName,
      id: id ?? this.id,
      role: role ?? this.role,
      dept: dept ?? this.dept,
      stage: stage ?? this.stage,
      lastSeenInEpoch: lastSeenInEpoch ?? this.lastSeenInEpoch,
      isOnline: isOnline ?? this.isOnline,
      password: password ?? this.password,
    );
  }
}
