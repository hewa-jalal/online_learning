import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:online_learning/domain/entites/user.dart';
import 'package:online_learning/domain/usecase/get_user.dart';

part 'user_auth_event.dart';
part 'user_auth_state.dart';
part 'user_auth_bloc.freezed.dart';

class UserAuthBloc extends Bloc<UserAuthEvent, UserAuthState> {
  final GetUser getUser;
  UserAuthBloc(this.getUser) : super(const _Initial());

  @override
  Stream<UserAuthState> mapEventToState(
    UserAuthEvent event,
  ) async* {
    yield* event.map(
      started: (e) async* {},
      getUserById: (e) async* {
        final either = await getUser(UserParam(id: e.id));
        yield either.fold(
          (failure) => const UserAuthState.userError(),
          (user) => UserAuthState.userLoaded(user: user),
        );
      },
    );
  }
}
