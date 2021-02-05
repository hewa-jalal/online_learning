import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:online_learning/domain/users/user.dart';
import 'package:online_learning/domain/users/user_repository.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';
part 'authentication_bloc.freezed.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  final UserRepository _userRepository;
  AuthenticationBloc(this._userRepository)
      : super(const AuthenticationState.uninitialized());

  @override
  Stream<AuthenticationState> mapEventToState(
    AuthenticationEvent event,
  ) async* {
    event.map(
      started: (e) async* {
        print('started');
        yield const AuthenticationState.uninitialized();
      },
      authCheckRequested: (e) async* {
        final user = await _userRepository.getUser();
        print('userId: ${user.id}');
        if (e.id == user.id) {
          yield AuthenticationState.authenticated(userEntity: user);
        } else {
          print('else in bloc');
          yield const AuthenticationState.uninitialized();
        }
      },
    );
  }
}
