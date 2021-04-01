part of 'user_auth_bloc.dart';

enum UserStatus {
  initial,
  waiting,
  done,
}

@freezed
abstract class UserAuthState with _$UserAuthState {
  const factory UserAuthState({
    @required int id,
    @required String role,
    @required int stage,
    @required String dept,
    @required String fullName,
    @required int lastSeenInEpoch,
    @required bool isOnline,
    @required List<UserEntity> users,
    @required UserStatus userStatus,
  }) = _UserAuthState;

  factory UserAuthState.initial() => UserAuthState(
        id: 0,
        fullName: '',
        dept: '',
        role: '',
        stage: 0,
        lastSeenInEpoch: 0,
        users: List.empty(),
        isOnline: false,
        userStatus: UserStatus.initial,
      );

  factory UserAuthState.failure() => UserAuthState(
        id: 0,
        fullName: '',
        dept: '',
        role: '',
        stage: 0,
        lastSeenInEpoch: 0,
        users: List.empty(),
        isOnline: false,
        userStatus: UserStatus.initial,
      );
}
