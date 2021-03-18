part of 'user_auth_bloc.dart';

@freezed
abstract class UserAuthEvent with _$UserAuthEvent {
  const factory UserAuthEvent.started() = _Started;
  const factory UserAuthEvent.getUserById({@required int id}) = _GetUserById;
  const factory UserAuthEvent.getAllUsers() = _GetAllUsers;
}
