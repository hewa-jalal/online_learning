part of 'authentication_bloc.dart';

@freezed
abstract class AuthenticationEvent with _$AuthenticationEvent {
  const factory AuthenticationEvent.authCheckRequested({
    @required final String id,
  }) = _AuthCheckRequested;

  const factory AuthenticationEvent.started() = _Started;
}
