part of 'user_auth_bloc.dart';

enum UserStatus {
  initial,
  waiting,
  done,
}

@freezed
abstract class UserAuthState with _$UserAuthState {
  const factory UserAuthState({
    required UserEntity user,
    required List<UserEntity> users,
    required List<UserEntity> submittedUsers,
    required UserStatus userStatus,
    required Option<Either<UserNotFoundFailure, UserEntity>> authFailureOrSuccessOption,
  }) = _UserAuthState;

  factory UserAuthState.initial() => UserAuthState(
        user: UserModel.empty(),
        users: List.empty(),
        userStatus: UserStatus.initial,
        authFailureOrSuccessOption: none(),
        submittedUsers: List.empty(),
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
