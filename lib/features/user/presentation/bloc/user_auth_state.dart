part of 'user_auth_bloc.dart';

enum UserStatus {
  initial,
  waiting,
  done,
}

// TODO: create a userEntity parameter
@freezed
abstract class UserAuthState with _$UserAuthState {
  const factory UserAuthState({
    @required UserEntity user,
    @required List<UserEntity> users,
    @required UserStatus userStatus,
    @required Option<Either<Failure, UserEntity>> authFailureOrSuccessOption,
  }) = _UserAuthState;

  factory UserAuthState.initial() => UserAuthState(
        user: UserModel.empty(),
        users: List.empty(),
        userStatus: UserStatus.initial,
        authFailureOrSuccessOption: none(),
      );

  // factory UserAuthState.failure() => UserAuthState(
  //       id: 0,
  //       fullName: '',
  //       dept: '',
  //       role: '',
  //       stage: 0,
  //       lastSeenInEpoch: 0,
  //       users: List.empty(),
  //       isOnline: false,
  //       userStatus: UserStatus.initial,
  //     authFailureOrSuccessOption: some(unit),
  //     );
}
