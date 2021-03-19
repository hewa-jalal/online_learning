part of 'user_auth_bloc.dart';

// @freezed
// abstract class UserAuthState with _$UserAuthState {
//   const factory UserAuthState.initial() = _Initial;
//   const factory UserAuthState.userLoaded({
//     @required UserEntity user,
//   }) = _UserLoaded;
//   const factory UserAuthState.usersLoaded({
//     @required List<UserEntity> users,
//   }) = _UsersLoaded;
//   const factory UserAuthState.userError() = _UserError;
// }

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
      );
}
