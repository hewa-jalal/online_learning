// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user_auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$UserAuthEventTearOff {
  const _$UserAuthEventTearOff();

// ignore: unused_element
  _Started started() {
    return const _Started();
  }

// ignore: unused_element
  _UpdateUserTime updateUserTime() {
    return const _UpdateUserTime();
  }

// ignore: unused_element
  _UpdateUserOnlineStatus updateUserOnlineStatus({@required bool isOnline}) {
    return _UpdateUserOnlineStatus(
      isOnline: isOnline,
    );
  }

// ignore: unused_element
  _GetUserById getUserById({@required int id}) {
    return _GetUserById(
      id: id,
    );
  }

// ignore: unused_element
  _GetAllUsers getAllUsers() {
    return const _GetAllUsers();
  }
}

/// @nodoc
// ignore: unused_element
const $UserAuthEvent = _$UserAuthEventTearOff();

/// @nodoc
mixin _$UserAuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(),
    @required TResult updateUserTime(),
    @required TResult updateUserOnlineStatus(bool isOnline),
    @required TResult getUserById(int id),
    @required TResult getAllUsers(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult updateUserTime(),
    TResult updateUserOnlineStatus(bool isOnline),
    TResult getUserById(int id),
    TResult getAllUsers(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required TResult updateUserTime(_UpdateUserTime value),
    @required TResult updateUserOnlineStatus(_UpdateUserOnlineStatus value),
    @required TResult getUserById(_GetUserById value),
    @required TResult getAllUsers(_GetAllUsers value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult updateUserTime(_UpdateUserTime value),
    TResult updateUserOnlineStatus(_UpdateUserOnlineStatus value),
    TResult getUserById(_GetUserById value),
    TResult getAllUsers(_GetAllUsers value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $UserAuthEventCopyWith<$Res> {
  factory $UserAuthEventCopyWith(
          UserAuthEvent value, $Res Function(UserAuthEvent) then) =
      _$UserAuthEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserAuthEventCopyWithImpl<$Res>
    implements $UserAuthEventCopyWith<$Res> {
  _$UserAuthEventCopyWithImpl(this._value, this._then);

  final UserAuthEvent _value;
  // ignore: unused_field
  final $Res Function(UserAuthEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$UserAuthEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;
}

/// @nodoc
class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'UserAuthEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(),
    @required TResult updateUserTime(),
    @required TResult updateUserOnlineStatus(bool isOnline),
    @required TResult getUserById(int id),
    @required TResult getAllUsers(),
  }) {
    assert(started != null);
    assert(updateUserTime != null);
    assert(updateUserOnlineStatus != null);
    assert(getUserById != null);
    assert(getAllUsers != null);
    return started();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult updateUserTime(),
    TResult updateUserOnlineStatus(bool isOnline),
    TResult getUserById(int id),
    TResult getAllUsers(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required TResult updateUserTime(_UpdateUserTime value),
    @required TResult updateUserOnlineStatus(_UpdateUserOnlineStatus value),
    @required TResult getUserById(_GetUserById value),
    @required TResult getAllUsers(_GetAllUsers value),
  }) {
    assert(started != null);
    assert(updateUserTime != null);
    assert(updateUserOnlineStatus != null);
    assert(getUserById != null);
    assert(getAllUsers != null);
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult updateUserTime(_UpdateUserTime value),
    TResult updateUserOnlineStatus(_UpdateUserOnlineStatus value),
    TResult getUserById(_GetUserById value),
    TResult getAllUsers(_GetAllUsers value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements UserAuthEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$UpdateUserTimeCopyWith<$Res> {
  factory _$UpdateUserTimeCopyWith(
          _UpdateUserTime value, $Res Function(_UpdateUserTime) then) =
      __$UpdateUserTimeCopyWithImpl<$Res>;
}

/// @nodoc
class __$UpdateUserTimeCopyWithImpl<$Res>
    extends _$UserAuthEventCopyWithImpl<$Res>
    implements _$UpdateUserTimeCopyWith<$Res> {
  __$UpdateUserTimeCopyWithImpl(
      _UpdateUserTime _value, $Res Function(_UpdateUserTime) _then)
      : super(_value, (v) => _then(v as _UpdateUserTime));

  @override
  _UpdateUserTime get _value => super._value as _UpdateUserTime;
}

/// @nodoc
class _$_UpdateUserTime implements _UpdateUserTime {
  const _$_UpdateUserTime();

  @override
  String toString() {
    return 'UserAuthEvent.updateUserTime()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _UpdateUserTime);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(),
    @required TResult updateUserTime(),
    @required TResult updateUserOnlineStatus(bool isOnline),
    @required TResult getUserById(int id),
    @required TResult getAllUsers(),
  }) {
    assert(started != null);
    assert(updateUserTime != null);
    assert(updateUserOnlineStatus != null);
    assert(getUserById != null);
    assert(getAllUsers != null);
    return updateUserTime();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult updateUserTime(),
    TResult updateUserOnlineStatus(bool isOnline),
    TResult getUserById(int id),
    TResult getAllUsers(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updateUserTime != null) {
      return updateUserTime();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required TResult updateUserTime(_UpdateUserTime value),
    @required TResult updateUserOnlineStatus(_UpdateUserOnlineStatus value),
    @required TResult getUserById(_GetUserById value),
    @required TResult getAllUsers(_GetAllUsers value),
  }) {
    assert(started != null);
    assert(updateUserTime != null);
    assert(updateUserOnlineStatus != null);
    assert(getUserById != null);
    assert(getAllUsers != null);
    return updateUserTime(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult updateUserTime(_UpdateUserTime value),
    TResult updateUserOnlineStatus(_UpdateUserOnlineStatus value),
    TResult getUserById(_GetUserById value),
    TResult getAllUsers(_GetAllUsers value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updateUserTime != null) {
      return updateUserTime(this);
    }
    return orElse();
  }
}

abstract class _UpdateUserTime implements UserAuthEvent {
  const factory _UpdateUserTime() = _$_UpdateUserTime;
}

/// @nodoc
abstract class _$UpdateUserOnlineStatusCopyWith<$Res> {
  factory _$UpdateUserOnlineStatusCopyWith(_UpdateUserOnlineStatus value,
          $Res Function(_UpdateUserOnlineStatus) then) =
      __$UpdateUserOnlineStatusCopyWithImpl<$Res>;
  $Res call({bool isOnline});
}

/// @nodoc
class __$UpdateUserOnlineStatusCopyWithImpl<$Res>
    extends _$UserAuthEventCopyWithImpl<$Res>
    implements _$UpdateUserOnlineStatusCopyWith<$Res> {
  __$UpdateUserOnlineStatusCopyWithImpl(_UpdateUserOnlineStatus _value,
      $Res Function(_UpdateUserOnlineStatus) _then)
      : super(_value, (v) => _then(v as _UpdateUserOnlineStatus));

  @override
  _UpdateUserOnlineStatus get _value => super._value as _UpdateUserOnlineStatus;

  @override
  $Res call({
    Object isOnline = freezed,
  }) {
    return _then(_UpdateUserOnlineStatus(
      isOnline: isOnline == freezed ? _value.isOnline : isOnline as bool,
    ));
  }
}

/// @nodoc
class _$_UpdateUserOnlineStatus implements _UpdateUserOnlineStatus {
  const _$_UpdateUserOnlineStatus({@required this.isOnline})
      : assert(isOnline != null);

  @override
  final bool isOnline;

  @override
  String toString() {
    return 'UserAuthEvent.updateUserOnlineStatus(isOnline: $isOnline)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateUserOnlineStatus &&
            (identical(other.isOnline, isOnline) ||
                const DeepCollectionEquality()
                    .equals(other.isOnline, isOnline)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(isOnline);

  @JsonKey(ignore: true)
  @override
  _$UpdateUserOnlineStatusCopyWith<_UpdateUserOnlineStatus> get copyWith =>
      __$UpdateUserOnlineStatusCopyWithImpl<_UpdateUserOnlineStatus>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(),
    @required TResult updateUserTime(),
    @required TResult updateUserOnlineStatus(bool isOnline),
    @required TResult getUserById(int id),
    @required TResult getAllUsers(),
  }) {
    assert(started != null);
    assert(updateUserTime != null);
    assert(updateUserOnlineStatus != null);
    assert(getUserById != null);
    assert(getAllUsers != null);
    return updateUserOnlineStatus(isOnline);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult updateUserTime(),
    TResult updateUserOnlineStatus(bool isOnline),
    TResult getUserById(int id),
    TResult getAllUsers(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updateUserOnlineStatus != null) {
      return updateUserOnlineStatus(isOnline);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required TResult updateUserTime(_UpdateUserTime value),
    @required TResult updateUserOnlineStatus(_UpdateUserOnlineStatus value),
    @required TResult getUserById(_GetUserById value),
    @required TResult getAllUsers(_GetAllUsers value),
  }) {
    assert(started != null);
    assert(updateUserTime != null);
    assert(updateUserOnlineStatus != null);
    assert(getUserById != null);
    assert(getAllUsers != null);
    return updateUserOnlineStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult updateUserTime(_UpdateUserTime value),
    TResult updateUserOnlineStatus(_UpdateUserOnlineStatus value),
    TResult getUserById(_GetUserById value),
    TResult getAllUsers(_GetAllUsers value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updateUserOnlineStatus != null) {
      return updateUserOnlineStatus(this);
    }
    return orElse();
  }
}

abstract class _UpdateUserOnlineStatus implements UserAuthEvent {
  const factory _UpdateUserOnlineStatus({@required bool isOnline}) =
      _$_UpdateUserOnlineStatus;

  bool get isOnline;
  @JsonKey(ignore: true)
  _$UpdateUserOnlineStatusCopyWith<_UpdateUserOnlineStatus> get copyWith;
}

/// @nodoc
abstract class _$GetUserByIdCopyWith<$Res> {
  factory _$GetUserByIdCopyWith(
          _GetUserById value, $Res Function(_GetUserById) then) =
      __$GetUserByIdCopyWithImpl<$Res>;
  $Res call({int id});
}

/// @nodoc
class __$GetUserByIdCopyWithImpl<$Res> extends _$UserAuthEventCopyWithImpl<$Res>
    implements _$GetUserByIdCopyWith<$Res> {
  __$GetUserByIdCopyWithImpl(
      _GetUserById _value, $Res Function(_GetUserById) _then)
      : super(_value, (v) => _then(v as _GetUserById));

  @override
  _GetUserById get _value => super._value as _GetUserById;

  @override
  $Res call({
    Object id = freezed,
  }) {
    return _then(_GetUserById(
      id: id == freezed ? _value.id : id as int,
    ));
  }
}

/// @nodoc
class _$_GetUserById implements _GetUserById {
  const _$_GetUserById({@required this.id}) : assert(id != null);

  @override
  final int id;

  @override
  String toString() {
    return 'UserAuthEvent.getUserById(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetUserById &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$GetUserByIdCopyWith<_GetUserById> get copyWith =>
      __$GetUserByIdCopyWithImpl<_GetUserById>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(),
    @required TResult updateUserTime(),
    @required TResult updateUserOnlineStatus(bool isOnline),
    @required TResult getUserById(int id),
    @required TResult getAllUsers(),
  }) {
    assert(started != null);
    assert(updateUserTime != null);
    assert(updateUserOnlineStatus != null);
    assert(getUserById != null);
    assert(getAllUsers != null);
    return getUserById(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult updateUserTime(),
    TResult updateUserOnlineStatus(bool isOnline),
    TResult getUserById(int id),
    TResult getAllUsers(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getUserById != null) {
      return getUserById(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required TResult updateUserTime(_UpdateUserTime value),
    @required TResult updateUserOnlineStatus(_UpdateUserOnlineStatus value),
    @required TResult getUserById(_GetUserById value),
    @required TResult getAllUsers(_GetAllUsers value),
  }) {
    assert(started != null);
    assert(updateUserTime != null);
    assert(updateUserOnlineStatus != null);
    assert(getUserById != null);
    assert(getAllUsers != null);
    return getUserById(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult updateUserTime(_UpdateUserTime value),
    TResult updateUserOnlineStatus(_UpdateUserOnlineStatus value),
    TResult getUserById(_GetUserById value),
    TResult getAllUsers(_GetAllUsers value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getUserById != null) {
      return getUserById(this);
    }
    return orElse();
  }
}

abstract class _GetUserById implements UserAuthEvent {
  const factory _GetUserById({@required int id}) = _$_GetUserById;

  int get id;
  @JsonKey(ignore: true)
  _$GetUserByIdCopyWith<_GetUserById> get copyWith;
}

/// @nodoc
abstract class _$GetAllUsersCopyWith<$Res> {
  factory _$GetAllUsersCopyWith(
          _GetAllUsers value, $Res Function(_GetAllUsers) then) =
      __$GetAllUsersCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetAllUsersCopyWithImpl<$Res> extends _$UserAuthEventCopyWithImpl<$Res>
    implements _$GetAllUsersCopyWith<$Res> {
  __$GetAllUsersCopyWithImpl(
      _GetAllUsers _value, $Res Function(_GetAllUsers) _then)
      : super(_value, (v) => _then(v as _GetAllUsers));

  @override
  _GetAllUsers get _value => super._value as _GetAllUsers;
}

/// @nodoc
class _$_GetAllUsers implements _GetAllUsers {
  const _$_GetAllUsers();

  @override
  String toString() {
    return 'UserAuthEvent.getAllUsers()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GetAllUsers);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(),
    @required TResult updateUserTime(),
    @required TResult updateUserOnlineStatus(bool isOnline),
    @required TResult getUserById(int id),
    @required TResult getAllUsers(),
  }) {
    assert(started != null);
    assert(updateUserTime != null);
    assert(updateUserOnlineStatus != null);
    assert(getUserById != null);
    assert(getAllUsers != null);
    return getAllUsers();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult updateUserTime(),
    TResult updateUserOnlineStatus(bool isOnline),
    TResult getUserById(int id),
    TResult getAllUsers(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getAllUsers != null) {
      return getAllUsers();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required TResult updateUserTime(_UpdateUserTime value),
    @required TResult updateUserOnlineStatus(_UpdateUserOnlineStatus value),
    @required TResult getUserById(_GetUserById value),
    @required TResult getAllUsers(_GetAllUsers value),
  }) {
    assert(started != null);
    assert(updateUserTime != null);
    assert(updateUserOnlineStatus != null);
    assert(getUserById != null);
    assert(getAllUsers != null);
    return getAllUsers(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult updateUserTime(_UpdateUserTime value),
    TResult updateUserOnlineStatus(_UpdateUserOnlineStatus value),
    TResult getUserById(_GetUserById value),
    TResult getAllUsers(_GetAllUsers value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getAllUsers != null) {
      return getAllUsers(this);
    }
    return orElse();
  }
}

abstract class _GetAllUsers implements UserAuthEvent {
  const factory _GetAllUsers() = _$_GetAllUsers;
}

/// @nodoc
class _$UserAuthStateTearOff {
  const _$UserAuthStateTearOff();

// ignore: unused_element
  _UserAuthState call(
      {@required
          UserEntity user,
      @required
          List<UserEntity> users,
      @required
          UserStatus userStatus,
      @required
          Option<Either<Failure, UserEntity>> authFailureOrSuccessOption}) {
    return _UserAuthState(
      user: user,
      users: users,
      userStatus: userStatus,
      authFailureOrSuccessOption: authFailureOrSuccessOption,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UserAuthState = _$UserAuthStateTearOff();

/// @nodoc
mixin _$UserAuthState {
  UserEntity get user;
  List<UserEntity> get users;
  UserStatus get userStatus;
  Option<Either<Failure, UserEntity>> get authFailureOrSuccessOption;

  @JsonKey(ignore: true)
  $UserAuthStateCopyWith<UserAuthState> get copyWith;
}

/// @nodoc
abstract class $UserAuthStateCopyWith<$Res> {
  factory $UserAuthStateCopyWith(
          UserAuthState value, $Res Function(UserAuthState) then) =
      _$UserAuthStateCopyWithImpl<$Res>;
  $Res call(
      {UserEntity user,
      List<UserEntity> users,
      UserStatus userStatus,
      Option<Either<Failure, UserEntity>> authFailureOrSuccessOption});
}

/// @nodoc
class _$UserAuthStateCopyWithImpl<$Res>
    implements $UserAuthStateCopyWith<$Res> {
  _$UserAuthStateCopyWithImpl(this._value, this._then);

  final UserAuthState _value;
  // ignore: unused_field
  final $Res Function(UserAuthState) _then;

  @override
  $Res call({
    Object user = freezed,
    Object users = freezed,
    Object userStatus = freezed,
    Object authFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      user: user == freezed ? _value.user : user as UserEntity,
      users: users == freezed ? _value.users : users as List<UserEntity>,
      userStatus:
          userStatus == freezed ? _value.userStatus : userStatus as UserStatus,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption as Option<Either<Failure, UserEntity>>,
    ));
  }
}

/// @nodoc
abstract class _$UserAuthStateCopyWith<$Res>
    implements $UserAuthStateCopyWith<$Res> {
  factory _$UserAuthStateCopyWith(
          _UserAuthState value, $Res Function(_UserAuthState) then) =
      __$UserAuthStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {UserEntity user,
      List<UserEntity> users,
      UserStatus userStatus,
      Option<Either<Failure, UserEntity>> authFailureOrSuccessOption});
}

/// @nodoc
class __$UserAuthStateCopyWithImpl<$Res>
    extends _$UserAuthStateCopyWithImpl<$Res>
    implements _$UserAuthStateCopyWith<$Res> {
  __$UserAuthStateCopyWithImpl(
      _UserAuthState _value, $Res Function(_UserAuthState) _then)
      : super(_value, (v) => _then(v as _UserAuthState));

  @override
  _UserAuthState get _value => super._value as _UserAuthState;

  @override
  $Res call({
    Object user = freezed,
    Object users = freezed,
    Object userStatus = freezed,
    Object authFailureOrSuccessOption = freezed,
  }) {
    return _then(_UserAuthState(
      user: user == freezed ? _value.user : user as UserEntity,
      users: users == freezed ? _value.users : users as List<UserEntity>,
      userStatus:
          userStatus == freezed ? _value.userStatus : userStatus as UserStatus,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption as Option<Either<Failure, UserEntity>>,
    ));
  }
}

/// @nodoc
class _$_UserAuthState implements _UserAuthState {
  const _$_UserAuthState(
      {@required this.user,
      @required this.users,
      @required this.userStatus,
      @required this.authFailureOrSuccessOption})
      : assert(user != null),
        assert(users != null),
        assert(userStatus != null),
        assert(authFailureOrSuccessOption != null);

  @override
  final UserEntity user;
  @override
  final List<UserEntity> users;
  @override
  final UserStatus userStatus;
  @override
  final Option<Either<Failure, UserEntity>> authFailureOrSuccessOption;

  @override
  String toString() {
    return 'UserAuthState(user: $user, users: $users, userStatus: $userStatus, authFailureOrSuccessOption: $authFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserAuthState &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.users, users) ||
                const DeepCollectionEquality().equals(other.users, users)) &&
            (identical(other.userStatus, userStatus) ||
                const DeepCollectionEquality()
                    .equals(other.userStatus, userStatus)) &&
            (identical(other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(users) ^
      const DeepCollectionEquality().hash(userStatus) ^
      const DeepCollectionEquality().hash(authFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$UserAuthStateCopyWith<_UserAuthState> get copyWith =>
      __$UserAuthStateCopyWithImpl<_UserAuthState>(this, _$identity);
}

abstract class _UserAuthState implements UserAuthState {
  const factory _UserAuthState(
          {@required
              UserEntity user,
          @required
              List<UserEntity> users,
          @required
              UserStatus userStatus,
          @required
              Option<Either<Failure, UserEntity>> authFailureOrSuccessOption}) =
      _$_UserAuthState;

  @override
  UserEntity get user;
  @override
  List<UserEntity> get users;
  @override
  UserStatus get userStatus;
  @override
  Option<Either<Failure, UserEntity>> get authFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$UserAuthStateCopyWith<_UserAuthState> get copyWith;
}
