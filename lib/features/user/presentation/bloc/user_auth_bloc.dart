import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:online_learning/features/user/core/errors/failures.dart';
import 'package:online_learning/features/user/data/models/user_model.dart';
import '../../core/params/user_params.dart';
import '../../core/usecase/use_case.dart';
import '../../domain/entites/user.dart';

import '../../domain/usecase/get_user.dart';
import '../../domain/usecase/get_users.dart';
import '../../domain/usecase/update_user_time.dart';
import '../../domain/usecase/user_online_status.dart';

part 'user_auth_event.dart';
part 'user_auth_state.dart';
part 'user_auth_bloc.freezed.dart';

// class UserAuthBloc extends Bloc<UserAuthEvent, UserAuthState> {
//   final GetUser getUser;
//   final GetAllUsers getAllUsers;
//   UserAuthBloc({
//     @required this.getUser,
//     @required this.getAllUsers,
//   }) : super(const _Initial());

//   @override
//   Stream<UserAuthState> mapEventToState(
//     UserAuthEvent event,
//   ) async* {
//     yield* event.map(
//       started: (e) async* {},
//       getUserById: (e) async* {
//         final either = await getUser(UserParam(id: e.id));
//         yield either.fold(
//           (failure) => const UserAuthState.userError(),
//           (user) => UserAuthState.userLoaded(user: user),
//         );
//       },
//       getAllUsers: (e) async* {
//         final either = await getAllUsers(NoParams());
//         yield either.fold(
//           (failure) => const UserAuthState.userError(),
//           (users) => UserAuthState.usersLoaded(users: users),
//         );
//       },
//     );
//   }
// }

@injectable
class UserAuthBloc extends Bloc<UserAuthEvent, UserAuthState> {
  final GetUser getUser;
  final GetAllUsers getAllUsers;
  final UpdateUserTime updateUserTime;
  final UserOnlineStatus userOnlineStatus;
  UserAuthBloc({
    @required this.getUser,
    @required this.getAllUsers,
    @required this.updateUserTime,
    @required this.userOnlineStatus,
  }) : super(UserAuthState.initial());

  @override
  Stream<UserAuthState> mapEventToState(
    UserAuthEvent event,
  ) async* {
    yield* event.map(
      started: (e) async* {
        yield state.copyWith();
      },
      getUserById: (e) async* {
        state.user;
        yield state.copyWith(
          userStatus: UserStatus.waiting,
          // to display the id in snackbar
          user: state.user.copyWith(id: e.id.toString()),
          authFailureOrSuccessOption: none(),
        );
        final either = await getUser(UserParam(id: e.id));
        yield either.fold(
          (failure) => state.copyWith(
            authFailureOrSuccessOption: some(either),
          ),
          (user) => state.copyWith(
            user: user,
            userStatus: UserStatus.done,
            authFailureOrSuccessOption: some(either),
          ),
        );
        // TODO: maybe wrong
        add(UserAuthEvent.updateUserTime());
        add(UserAuthEvent.updateUserOnlineStatus(isOnline: true));
      },
      getAllUsers: (e) async* {
        final either = await getAllUsers(NoParams());
        yield either.fold(
          (failure) => null,
          (users) => state.copyWith(
            users: users,
          ),
        );
      },
      updateUserTime: (e) async* {
        updateUserTime(UserParam(id: int.parse(state.user.id)));
      },
      updateUserOnlineStatus: (e) async* {
        userOnlineStatus(
            OnlineParams(id: int.parse(state.user.id), isOnline: e.isOnline));
      },
    );
  }
}
