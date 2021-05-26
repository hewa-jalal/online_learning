// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'user_auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserAuthEventTearOff {
  const _$UserAuthEventTearOff();

  _Started started() {
    return const _Started();
  }

  _UpdateUserTime updateUserTime() {
    return const _UpdateUserTime();
  }

  _UpdateUserOnlineStatus updateUserOnlineStatus({required bool isOnline}) {
    return _UpdateUserOnlineStatus(
      isOnline: isOnline,
    );
  }

  _GetUserById getUserById({required int id, required String password}) {
    return _GetUserById(
      id: id,
      password: password,
    );
  }

  _GetAllUsers getAllUsers() {
    return const _GetAllUsers();
  }

  _GetAllSubmittedUsers getAllSubmittedUsers({required String id}) {
    return _GetAllSubmittedUsers(
      id: id,
    );
  }
}

/// @nodoc
const $UserAuthEvent = _$UserAuthEventTearOff();

/// @nodoc
mixin _$UserAuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() updateUserTime,
    required TResult Function(bool isOnline) updateUserOnlineStatus,
    required TResult Function(int id, String password) getUserById,
    required TResult Function() getAllUsers,
    required TResult Function(String id) getAllSubmittedUsers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? updateUserTime,
    TResult Function(bool isOnline)? updateUserOnlineStatus,
    TResult Function(int id, String password)? getUserById,
    TResult Function()? getAllUsers,
    TResult Function(String id)? getAllSubmittedUsers,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_UpdateUserTime value) updateUserTime,
    required TResult Function(_UpdateUserOnlineStatus value)
        updateUserOnlineStatus,
    required TResult Function(_GetUserById value) getUserById,
    required TResult Function(_GetAllUsers value) getAllUsers,
    required TResult Function(_GetAllSubmittedUsers value) getAllSubmittedUsers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UpdateUserTime value)? updateUserTime,
    TResult Function(_UpdateUserOnlineStatus value)? updateUserOnlineStatus,
    TResult Function(_GetUserById value)? getUserById,
    TResult Function(_GetAllUsers value)? getAllUsers,
    TResult Function(_GetAllSubmittedUsers value)? getAllSubmittedUsers,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
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
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() updateUserTime,
    required TResult Function(bool isOnline) updateUserOnlineStatus,
    required TResult Function(int id, String password) getUserById,
    required TResult Function() getAllUsers,
    required TResult Function(String id) getAllSubmittedUsers,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? updateUserTime,
    TResult Function(bool isOnline)? updateUserOnlineStatus,
    TResult Function(int id, String password)? getUserById,
    TResult Function()? getAllUsers,
    TResult Function(String id)? getAllSubmittedUsers,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_UpdateUserTime value) updateUserTime,
    required TResult Function(_UpdateUserOnlineStatus value)
        updateUserOnlineStatus,
    required TResult Function(_GetUserById value) getUserById,
    required TResult Function(_GetAllUsers value) getAllUsers,
    required TResult Function(_GetAllSubmittedUsers value) getAllSubmittedUsers,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UpdateUserTime value)? updateUserTime,
    TResult Function(_UpdateUserOnlineStatus value)? updateUserOnlineStatus,
    TResult Function(_GetUserById value)? getUserById,
    TResult Function(_GetAllUsers value)? getAllUsers,
    TResult Function(_GetAllSubmittedUsers value)? getAllSubmittedUsers,
    required TResult orElse(),
  }) {
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
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() updateUserTime,
    required TResult Function(bool isOnline) updateUserOnlineStatus,
    required TResult Function(int id, String password) getUserById,
    required TResult Function() getAllUsers,
    required TResult Function(String id) getAllSubmittedUsers,
  }) {
    return updateUserTime();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? updateUserTime,
    TResult Function(bool isOnline)? updateUserOnlineStatus,
    TResult Function(int id, String password)? getUserById,
    TResult Function()? getAllUsers,
    TResult Function(String id)? getAllSubmittedUsers,
    required TResult orElse(),
  }) {
    if (updateUserTime != null) {
      return updateUserTime();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_UpdateUserTime value) updateUserTime,
    required TResult Function(_UpdateUserOnlineStatus value)
        updateUserOnlineStatus,
    required TResult Function(_GetUserById value) getUserById,
    required TResult Function(_GetAllUsers value) getAllUsers,
    required TResult Function(_GetAllSubmittedUsers value) getAllSubmittedUsers,
  }) {
    return updateUserTime(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UpdateUserTime value)? updateUserTime,
    TResult Function(_UpdateUserOnlineStatus value)? updateUserOnlineStatus,
    TResult Function(_GetUserById value)? getUserById,
    TResult Function(_GetAllUsers value)? getAllUsers,
    TResult Function(_GetAllSubmittedUsers value)? getAllSubmittedUsers,
    required TResult orElse(),
  }) {
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
    Object? isOnline = freezed,
  }) {
    return _then(_UpdateUserOnlineStatus(
      isOnline: isOnline == freezed
          ? _value.isOnline
          : isOnline // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_UpdateUserOnlineStatus implements _UpdateUserOnlineStatus {
  const _$_UpdateUserOnlineStatus({required this.isOnline});

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
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() updateUserTime,
    required TResult Function(bool isOnline) updateUserOnlineStatus,
    required TResult Function(int id, String password) getUserById,
    required TResult Function() getAllUsers,
    required TResult Function(String id) getAllSubmittedUsers,
  }) {
    return updateUserOnlineStatus(isOnline);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? updateUserTime,
    TResult Function(bool isOnline)? updateUserOnlineStatus,
    TResult Function(int id, String password)? getUserById,
    TResult Function()? getAllUsers,
    TResult Function(String id)? getAllSubmittedUsers,
    required TResult orElse(),
  }) {
    if (updateUserOnlineStatus != null) {
      return updateUserOnlineStatus(isOnline);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_UpdateUserTime value) updateUserTime,
    required TResult Function(_UpdateUserOnlineStatus value)
        updateUserOnlineStatus,
    required TResult Function(_GetUserById value) getUserById,
    required TResult Function(_GetAllUsers value) getAllUsers,
    required TResult Function(_GetAllSubmittedUsers value) getAllSubmittedUsers,
  }) {
    return updateUserOnlineStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UpdateUserTime value)? updateUserTime,
    TResult Function(_UpdateUserOnlineStatus value)? updateUserOnlineStatus,
    TResult Function(_GetUserById value)? getUserById,
    TResult Function(_GetAllUsers value)? getAllUsers,
    TResult Function(_GetAllSubmittedUsers value)? getAllSubmittedUsers,
    required TResult orElse(),
  }) {
    if (updateUserOnlineStatus != null) {
      return updateUserOnlineStatus(this);
    }
    return orElse();
  }
}

abstract class _UpdateUserOnlineStatus implements UserAuthEvent {
  const factory _UpdateUserOnlineStatus({required bool isOnline}) =
      _$_UpdateUserOnlineStatus;

  bool get isOnline => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$UpdateUserOnlineStatusCopyWith<_UpdateUserOnlineStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetUserByIdCopyWith<$Res> {
  factory _$GetUserByIdCopyWith(
          _GetUserById value, $Res Function(_GetUserById) then) =
      __$GetUserByIdCopyWithImpl<$Res>;
  $Res call({int id, String password});
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
    Object? id = freezed,
    Object? password = freezed,
  }) {
    return _then(_GetUserById(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetUserById implements _GetUserById {
  const _$_GetUserById({required this.id, required this.password});

  @override
  final int id;
  @override
  final String password;

  @override
  String toString() {
    return 'UserAuthEvent.getUserById(id: $id, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetUserById &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(password);

  @JsonKey(ignore: true)
  @override
  _$GetUserByIdCopyWith<_GetUserById> get copyWith =>
      __$GetUserByIdCopyWithImpl<_GetUserById>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() updateUserTime,
    required TResult Function(bool isOnline) updateUserOnlineStatus,
    required TResult Function(int id, String password) getUserById,
    required TResult Function() getAllUsers,
    required TResult Function(String id) getAllSubmittedUsers,
  }) {
    return getUserById(id, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? updateUserTime,
    TResult Function(bool isOnline)? updateUserOnlineStatus,
    TResult Function(int id, String password)? getUserById,
    TResult Function()? getAllUsers,
    TResult Function(String id)? getAllSubmittedUsers,
    required TResult orElse(),
  }) {
    if (getUserById != null) {
      return getUserById(id, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_UpdateUserTime value) updateUserTime,
    required TResult Function(_UpdateUserOnlineStatus value)
        updateUserOnlineStatus,
    required TResult Function(_GetUserById value) getUserById,
    required TResult Function(_GetAllUsers value) getAllUsers,
    required TResult Function(_GetAllSubmittedUsers value) getAllSubmittedUsers,
  }) {
    return getUserById(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UpdateUserTime value)? updateUserTime,
    TResult Function(_UpdateUserOnlineStatus value)? updateUserOnlineStatus,
    TResult Function(_GetUserById value)? getUserById,
    TResult Function(_GetAllUsers value)? getAllUsers,
    TResult Function(_GetAllSubmittedUsers value)? getAllSubmittedUsers,
    required TResult orElse(),
  }) {
    if (getUserById != null) {
      return getUserById(this);
    }
    return orElse();
  }
}

abstract class _GetUserById implements UserAuthEvent {
  const factory _GetUserById({required int id, required String password}) =
      _$_GetUserById;

  int get id => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GetUserByIdCopyWith<_GetUserById> get copyWith =>
      throw _privateConstructorUsedError;
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
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() updateUserTime,
    required TResult Function(bool isOnline) updateUserOnlineStatus,
    required TResult Function(int id, String password) getUserById,
    required TResult Function() getAllUsers,
    required TResult Function(String id) getAllSubmittedUsers,
  }) {
    return getAllUsers();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? updateUserTime,
    TResult Function(bool isOnline)? updateUserOnlineStatus,
    TResult Function(int id, String password)? getUserById,
    TResult Function()? getAllUsers,
    TResult Function(String id)? getAllSubmittedUsers,
    required TResult orElse(),
  }) {
    if (getAllUsers != null) {
      return getAllUsers();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_UpdateUserTime value) updateUserTime,
    required TResult Function(_UpdateUserOnlineStatus value)
        updateUserOnlineStatus,
    required TResult Function(_GetUserById value) getUserById,
    required TResult Function(_GetAllUsers value) getAllUsers,
    required TResult Function(_GetAllSubmittedUsers value) getAllSubmittedUsers,
  }) {
    return getAllUsers(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UpdateUserTime value)? updateUserTime,
    TResult Function(_UpdateUserOnlineStatus value)? updateUserOnlineStatus,
    TResult Function(_GetUserById value)? getUserById,
    TResult Function(_GetAllUsers value)? getAllUsers,
    TResult Function(_GetAllSubmittedUsers value)? getAllSubmittedUsers,
    required TResult orElse(),
  }) {
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
abstract class _$GetAllSubmittedUsersCopyWith<$Res> {
  factory _$GetAllSubmittedUsersCopyWith(_GetAllSubmittedUsers value,
          $Res Function(_GetAllSubmittedUsers) then) =
      __$GetAllSubmittedUsersCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class __$GetAllSubmittedUsersCopyWithImpl<$Res>
    extends _$UserAuthEventCopyWithImpl<$Res>
    implements _$GetAllSubmittedUsersCopyWith<$Res> {
  __$GetAllSubmittedUsersCopyWithImpl(
      _GetAllSubmittedUsers _value, $Res Function(_GetAllSubmittedUsers) _then)
      : super(_value, (v) => _then(v as _GetAllSubmittedUsers));

  @override
  _GetAllSubmittedUsers get _value => super._value as _GetAllSubmittedUsers;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_GetAllSubmittedUsers(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetAllSubmittedUsers implements _GetAllSubmittedUsers {
  const _$_GetAllSubmittedUsers({required this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'UserAuthEvent.getAllSubmittedUsers(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetAllSubmittedUsers &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$GetAllSubmittedUsersCopyWith<_GetAllSubmittedUsers> get copyWith =>
      __$GetAllSubmittedUsersCopyWithImpl<_GetAllSubmittedUsers>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() updateUserTime,
    required TResult Function(bool isOnline) updateUserOnlineStatus,
    required TResult Function(int id, String password) getUserById,
    required TResult Function() getAllUsers,
    required TResult Function(String id) getAllSubmittedUsers,
  }) {
    return getAllSubmittedUsers(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? updateUserTime,
    TResult Function(bool isOnline)? updateUserOnlineStatus,
    TResult Function(int id, String password)? getUserById,
    TResult Function()? getAllUsers,
    TResult Function(String id)? getAllSubmittedUsers,
    required TResult orElse(),
  }) {
    if (getAllSubmittedUsers != null) {
      return getAllSubmittedUsers(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_UpdateUserTime value) updateUserTime,
    required TResult Function(_UpdateUserOnlineStatus value)
        updateUserOnlineStatus,
    required TResult Function(_GetUserById value) getUserById,
    required TResult Function(_GetAllUsers value) getAllUsers,
    required TResult Function(_GetAllSubmittedUsers value) getAllSubmittedUsers,
  }) {
    return getAllSubmittedUsers(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UpdateUserTime value)? updateUserTime,
    TResult Function(_UpdateUserOnlineStatus value)? updateUserOnlineStatus,
    TResult Function(_GetUserById value)? getUserById,
    TResult Function(_GetAllUsers value)? getAllUsers,
    TResult Function(_GetAllSubmittedUsers value)? getAllSubmittedUsers,
    required TResult orElse(),
  }) {
    if (getAllSubmittedUsers != null) {
      return getAllSubmittedUsers(this);
    }
    return orElse();
  }
}

abstract class _GetAllSubmittedUsers implements UserAuthEvent {
  const factory _GetAllSubmittedUsers({required String id}) =
      _$_GetAllSubmittedUsers;

  String get id => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GetAllSubmittedUsersCopyWith<_GetAllSubmittedUsers> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$UserAuthStateTearOff {
  const _$UserAuthStateTearOff();

  _UserAuthState call(
      {required UserEntity user,
      required List<UserEntity> users,
      required List<UserEntity> submittedUsers,
      required UserStatus userStatus,
      required Option<Either<Failure, UserEntity>>
          authFailureOrSuccessOption}) {
    return _UserAuthState(
      user: user,
      users: users,
      submittedUsers: submittedUsers,
      userStatus: userStatus,
      authFailureOrSuccessOption: authFailureOrSuccessOption,
    );
  }
}

/// @nodoc
const $UserAuthState = _$UserAuthStateTearOff();

/// @nodoc
mixin _$UserAuthState {
  UserEntity get user => throw _privateConstructorUsedError;
  List<UserEntity> get users => throw _privateConstructorUsedError;
  List<UserEntity> get submittedUsers => throw _privateConstructorUsedError;
  UserStatus get userStatus => throw _privateConstructorUsedError;
  Option<Either<Failure, UserEntity>> get authFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserAuthStateCopyWith<UserAuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserAuthStateCopyWith<$Res> {
  factory $UserAuthStateCopyWith(
          UserAuthState value, $Res Function(UserAuthState) then) =
      _$UserAuthStateCopyWithImpl<$Res>;
  $Res call(
      {UserEntity user,
      List<UserEntity> users,
      List<UserEntity> submittedUsers,
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
    Object? user = freezed,
    Object? users = freezed,
    Object? submittedUsers = freezed,
    Object? userStatus = freezed,
    Object? authFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserEntity,
      users: users == freezed
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<UserEntity>,
      submittedUsers: submittedUsers == freezed
          ? _value.submittedUsers
          : submittedUsers // ignore: cast_nullable_to_non_nullable
              as List<UserEntity>,
      userStatus: userStatus == freezed
          ? _value.userStatus
          : userStatus // ignore: cast_nullable_to_non_nullable
              as UserStatus,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, UserEntity>>,
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
      List<UserEntity> submittedUsers,
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
    Object? user = freezed,
    Object? users = freezed,
    Object? submittedUsers = freezed,
    Object? userStatus = freezed,
    Object? authFailureOrSuccessOption = freezed,
  }) {
    return _then(_UserAuthState(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserEntity,
      users: users == freezed
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<UserEntity>,
      submittedUsers: submittedUsers == freezed
          ? _value.submittedUsers
          : submittedUsers // ignore: cast_nullable_to_non_nullable
              as List<UserEntity>,
      userStatus: userStatus == freezed
          ? _value.userStatus
          : userStatus // ignore: cast_nullable_to_non_nullable
              as UserStatus,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, UserEntity>>,
    ));
  }
}

/// @nodoc

class _$_UserAuthState implements _UserAuthState {
  const _$_UserAuthState(
      {required this.user,
      required this.users,
      required this.submittedUsers,
      required this.userStatus,
      required this.authFailureOrSuccessOption});

  @override
  final UserEntity user;
  @override
  final List<UserEntity> users;
  @override
  final List<UserEntity> submittedUsers;
  @override
  final UserStatus userStatus;
  @override
  final Option<Either<Failure, UserEntity>> authFailureOrSuccessOption;

  @override
  String toString() {
    return 'UserAuthState(user: $user, users: $users, submittedUsers: $submittedUsers, userStatus: $userStatus, authFailureOrSuccessOption: $authFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserAuthState &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.users, users) ||
                const DeepCollectionEquality().equals(other.users, users)) &&
            (identical(other.submittedUsers, submittedUsers) ||
                const DeepCollectionEquality()
                    .equals(other.submittedUsers, submittedUsers)) &&
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
      const DeepCollectionEquality().hash(submittedUsers) ^
      const DeepCollectionEquality().hash(userStatus) ^
      const DeepCollectionEquality().hash(authFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$UserAuthStateCopyWith<_UserAuthState> get copyWith =>
      __$UserAuthStateCopyWithImpl<_UserAuthState>(this, _$identity);
}

abstract class _UserAuthState implements UserAuthState {
  const factory _UserAuthState(
      {required UserEntity user,
      required List<UserEntity> users,
      required List<UserEntity> submittedUsers,
      required UserStatus userStatus,
      required Option<Either<Failure, UserEntity>>
          authFailureOrSuccessOption}) = _$_UserAuthState;

  @override
  UserEntity get user => throw _privateConstructorUsedError;
  @override
  List<UserEntity> get users => throw _privateConstructorUsedError;
  @override
  List<UserEntity> get submittedUsers => throw _privateConstructorUsedError;
  @override
  UserStatus get userStatus => throw _privateConstructorUsedError;
  @override
  Option<Either<Failure, UserEntity>> get authFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserAuthStateCopyWith<_UserAuthState> get copyWith =>
      throw _privateConstructorUsedError;
}
