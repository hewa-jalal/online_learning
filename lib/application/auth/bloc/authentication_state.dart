part of 'authentication_bloc.dart';

@freezed
abstract class AuthenticationState with _$AuthenticationState {
  const factory AuthenticationState.uninitialized() = _Uninitialized;
  const factory AuthenticationState.authenticated({
    @required UserEntity userEntity,
  }) = _Authenticated;
}
