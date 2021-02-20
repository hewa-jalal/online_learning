part of 'user_auth_bloc.dart';

@freezed
abstract class UserAuthState with _$UserAuthState {
  const factory UserAuthState.initial() = _Initial;
  const factory UserAuthState.userLoaded({
    @required UserEntity user,
  }) = _UserLoaded;
  const factory UserAuthState.usersLoaded({
    @required List<UserEntity> users,
  }) = _UsersLoaded;
  const factory UserAuthState.userError() = _UserError;
}
