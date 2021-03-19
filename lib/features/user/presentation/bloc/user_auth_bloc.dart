import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:online_learning/features/user/core/params/user_params.dart';

import 'package:online_learning/features/user/domain/usecase/get_user.dart';
import 'package:online_learning/features/user/domain/usecase/get_users.dart';
import 'package:online_learning/features/user/domain/usecase/update_user_time.dart';

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
  UserAuthBloc({
    @required this.getUser,
    @required this.getAllUsers,
    @required this.updateUserTime,
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
        final either = await getUser(UserParam(id: e.id));
        yield either.fold(
          (failure) => null,
          (user) => state.copyWith(
            id: e.id,
            fullName: user.fullName,
            dept: user.dept,
            role: user.role,
            stage: user.stage,
            lastSeenInEpoch: DateTime.now().millisecondsSinceEpoch,
          ),
        );
        add(UserAuthEvent.updateUserTime());
      },
      getAllUsers: (e) async* {
        // final either = await getAllUsers(NoParams());
        // yield either.fold(
        //   (failure) => const UserAuthState.userError(),
        //   (users) => state.copyWith(

        //   ),
        // );
      },
      updateUserTime: (e) async* {
        updateUserTime(UserParam(id: state.id));
      },
    );
  }
}
