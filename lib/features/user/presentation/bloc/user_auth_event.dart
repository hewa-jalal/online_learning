part of 'user_auth_bloc.dart';

@freezed
abstract class UserAuthEvent with _$UserAuthEvent {
  const factory UserAuthEvent.started() = _Started;
  const factory UserAuthEvent.updateUserTime() = _UpdateUserTime;
  const factory UserAuthEvent.updateUserOnlineStatus({
    required bool isOnline,
  }) = _UpdateUserOnlineStatus;
  const factory UserAuthEvent.getUserById({required int id}) = _GetUserById;
  const factory UserAuthEvent.getAllUsers() = _GetAllUsers;
  const factory UserAuthEvent.getAllSubmittedUsers({required String id}) =
      _GetAllSubmittedUsers;
}
