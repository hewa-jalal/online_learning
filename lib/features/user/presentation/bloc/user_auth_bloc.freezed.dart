// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? updateUserTime,
    TResult? Function(bool isOnline)? updateUserOnlineStatus,
    TResult? Function(int id, String password)? getUserById,
    TResult? Function()? getAllUsers,
    TResult? Function(String id)? getAllSubmittedUsers,
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_UpdateUserTime value)? updateUserTime,
    TResult? Function(_UpdateUserOnlineStatus value)? updateUserOnlineStatus,
    TResult? Function(_GetUserById value)? getUserById,
    TResult? Function(_GetAllUsers value)? getAllUsers,
    TResult? Function(_GetAllSubmittedUsers value)? getAllSubmittedUsers,
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
      _$UserAuthEventCopyWithImpl<$Res, UserAuthEvent>;
}

/// @nodoc
class _$UserAuthEventCopyWithImpl<$Res, $Val extends UserAuthEvent>
    implements $UserAuthEventCopyWith<$Res> {
  _$UserAuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$UserAuthEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'UserAuthEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? updateUserTime,
    TResult? Function(bool isOnline)? updateUserOnlineStatus,
    TResult? Function(int id, String password)? getUserById,
    TResult? Function()? getAllUsers,
    TResult? Function(String id)? getAllSubmittedUsers,
  }) {
    return started?.call();
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_UpdateUserTime value)? updateUserTime,
    TResult? Function(_UpdateUserOnlineStatus value)? updateUserOnlineStatus,
    TResult? Function(_GetUserById value)? getUserById,
    TResult? Function(_GetAllUsers value)? getAllUsers,
    TResult? Function(_GetAllSubmittedUsers value)? getAllSubmittedUsers,
  }) {
    return started?.call(this);
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
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$UpdateUserTimeImplCopyWith<$Res> {
  factory _$$UpdateUserTimeImplCopyWith(_$UpdateUserTimeImpl value,
          $Res Function(_$UpdateUserTimeImpl) then) =
      __$$UpdateUserTimeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdateUserTimeImplCopyWithImpl<$Res>
    extends _$UserAuthEventCopyWithImpl<$Res, _$UpdateUserTimeImpl>
    implements _$$UpdateUserTimeImplCopyWith<$Res> {
  __$$UpdateUserTimeImplCopyWithImpl(
      _$UpdateUserTimeImpl _value, $Res Function(_$UpdateUserTimeImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UpdateUserTimeImpl implements _UpdateUserTime {
  const _$UpdateUserTimeImpl();

  @override
  String toString() {
    return 'UserAuthEvent.updateUserTime()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UpdateUserTimeImpl);
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? updateUserTime,
    TResult? Function(bool isOnline)? updateUserOnlineStatus,
    TResult? Function(int id, String password)? getUserById,
    TResult? Function()? getAllUsers,
    TResult? Function(String id)? getAllSubmittedUsers,
  }) {
    return updateUserTime?.call();
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_UpdateUserTime value)? updateUserTime,
    TResult? Function(_UpdateUserOnlineStatus value)? updateUserOnlineStatus,
    TResult? Function(_GetUserById value)? getUserById,
    TResult? Function(_GetAllUsers value)? getAllUsers,
    TResult? Function(_GetAllSubmittedUsers value)? getAllSubmittedUsers,
  }) {
    return updateUserTime?.call(this);
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
  const factory _UpdateUserTime() = _$UpdateUserTimeImpl;
}

/// @nodoc
abstract class _$$UpdateUserOnlineStatusImplCopyWith<$Res> {
  factory _$$UpdateUserOnlineStatusImplCopyWith(
          _$UpdateUserOnlineStatusImpl value,
          $Res Function(_$UpdateUserOnlineStatusImpl) then) =
      __$$UpdateUserOnlineStatusImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isOnline});
}

/// @nodoc
class __$$UpdateUserOnlineStatusImplCopyWithImpl<$Res>
    extends _$UserAuthEventCopyWithImpl<$Res, _$UpdateUserOnlineStatusImpl>
    implements _$$UpdateUserOnlineStatusImplCopyWith<$Res> {
  __$$UpdateUserOnlineStatusImplCopyWithImpl(
      _$UpdateUserOnlineStatusImpl _value,
      $Res Function(_$UpdateUserOnlineStatusImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isOnline = null,
  }) {
    return _then(_$UpdateUserOnlineStatusImpl(
      isOnline: null == isOnline
          ? _value.isOnline
          : isOnline // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$UpdateUserOnlineStatusImpl implements _UpdateUserOnlineStatus {
  const _$UpdateUserOnlineStatusImpl({required this.isOnline});

  @override
  final bool isOnline;

  @override
  String toString() {
    return 'UserAuthEvent.updateUserOnlineStatus(isOnline: $isOnline)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateUserOnlineStatusImpl &&
            (identical(other.isOnline, isOnline) ||
                other.isOnline == isOnline));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isOnline);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateUserOnlineStatusImplCopyWith<_$UpdateUserOnlineStatusImpl>
      get copyWith => __$$UpdateUserOnlineStatusImplCopyWithImpl<
          _$UpdateUserOnlineStatusImpl>(this, _$identity);

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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? updateUserTime,
    TResult? Function(bool isOnline)? updateUserOnlineStatus,
    TResult? Function(int id, String password)? getUserById,
    TResult? Function()? getAllUsers,
    TResult? Function(String id)? getAllSubmittedUsers,
  }) {
    return updateUserOnlineStatus?.call(isOnline);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_UpdateUserTime value)? updateUserTime,
    TResult? Function(_UpdateUserOnlineStatus value)? updateUserOnlineStatus,
    TResult? Function(_GetUserById value)? getUserById,
    TResult? Function(_GetAllUsers value)? getAllUsers,
    TResult? Function(_GetAllSubmittedUsers value)? getAllSubmittedUsers,
  }) {
    return updateUserOnlineStatus?.call(this);
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
  const factory _UpdateUserOnlineStatus({required final bool isOnline}) =
      _$UpdateUserOnlineStatusImpl;

  bool get isOnline;
  @JsonKey(ignore: true)
  _$$UpdateUserOnlineStatusImplCopyWith<_$UpdateUserOnlineStatusImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetUserByIdImplCopyWith<$Res> {
  factory _$$GetUserByIdImplCopyWith(
          _$GetUserByIdImpl value, $Res Function(_$GetUserByIdImpl) then) =
      __$$GetUserByIdImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id, String password});
}

/// @nodoc
class __$$GetUserByIdImplCopyWithImpl<$Res>
    extends _$UserAuthEventCopyWithImpl<$Res, _$GetUserByIdImpl>
    implements _$$GetUserByIdImplCopyWith<$Res> {
  __$$GetUserByIdImplCopyWithImpl(
      _$GetUserByIdImpl _value, $Res Function(_$GetUserByIdImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? password = null,
  }) {
    return _then(_$GetUserByIdImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetUserByIdImpl implements _GetUserById {
  const _$GetUserByIdImpl({required this.id, required this.password});

  @override
  final int id;
  @override
  final String password;

  @override
  String toString() {
    return 'UserAuthEvent.getUserById(id: $id, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetUserByIdImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetUserByIdImplCopyWith<_$GetUserByIdImpl> get copyWith =>
      __$$GetUserByIdImplCopyWithImpl<_$GetUserByIdImpl>(this, _$identity);

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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? updateUserTime,
    TResult? Function(bool isOnline)? updateUserOnlineStatus,
    TResult? Function(int id, String password)? getUserById,
    TResult? Function()? getAllUsers,
    TResult? Function(String id)? getAllSubmittedUsers,
  }) {
    return getUserById?.call(id, password);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_UpdateUserTime value)? updateUserTime,
    TResult? Function(_UpdateUserOnlineStatus value)? updateUserOnlineStatus,
    TResult? Function(_GetUserById value)? getUserById,
    TResult? Function(_GetAllUsers value)? getAllUsers,
    TResult? Function(_GetAllSubmittedUsers value)? getAllSubmittedUsers,
  }) {
    return getUserById?.call(this);
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
  const factory _GetUserById(
      {required final int id,
      required final String password}) = _$GetUserByIdImpl;

  int get id;
  String get password;
  @JsonKey(ignore: true)
  _$$GetUserByIdImplCopyWith<_$GetUserByIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetAllUsersImplCopyWith<$Res> {
  factory _$$GetAllUsersImplCopyWith(
          _$GetAllUsersImpl value, $Res Function(_$GetAllUsersImpl) then) =
      __$$GetAllUsersImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAllUsersImplCopyWithImpl<$Res>
    extends _$UserAuthEventCopyWithImpl<$Res, _$GetAllUsersImpl>
    implements _$$GetAllUsersImplCopyWith<$Res> {
  __$$GetAllUsersImplCopyWithImpl(
      _$GetAllUsersImpl _value, $Res Function(_$GetAllUsersImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetAllUsersImpl implements _GetAllUsers {
  const _$GetAllUsersImpl();

  @override
  String toString() {
    return 'UserAuthEvent.getAllUsers()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetAllUsersImpl);
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? updateUserTime,
    TResult? Function(bool isOnline)? updateUserOnlineStatus,
    TResult? Function(int id, String password)? getUserById,
    TResult? Function()? getAllUsers,
    TResult? Function(String id)? getAllSubmittedUsers,
  }) {
    return getAllUsers?.call();
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_UpdateUserTime value)? updateUserTime,
    TResult? Function(_UpdateUserOnlineStatus value)? updateUserOnlineStatus,
    TResult? Function(_GetUserById value)? getUserById,
    TResult? Function(_GetAllUsers value)? getAllUsers,
    TResult? Function(_GetAllSubmittedUsers value)? getAllSubmittedUsers,
  }) {
    return getAllUsers?.call(this);
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
  const factory _GetAllUsers() = _$GetAllUsersImpl;
}

/// @nodoc
abstract class _$$GetAllSubmittedUsersImplCopyWith<$Res> {
  factory _$$GetAllSubmittedUsersImplCopyWith(_$GetAllSubmittedUsersImpl value,
          $Res Function(_$GetAllSubmittedUsersImpl) then) =
      __$$GetAllSubmittedUsersImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$GetAllSubmittedUsersImplCopyWithImpl<$Res>
    extends _$UserAuthEventCopyWithImpl<$Res, _$GetAllSubmittedUsersImpl>
    implements _$$GetAllSubmittedUsersImplCopyWith<$Res> {
  __$$GetAllSubmittedUsersImplCopyWithImpl(_$GetAllSubmittedUsersImpl _value,
      $Res Function(_$GetAllSubmittedUsersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$GetAllSubmittedUsersImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetAllSubmittedUsersImpl implements _GetAllSubmittedUsers {
  const _$GetAllSubmittedUsersImpl({required this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'UserAuthEvent.getAllSubmittedUsers(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAllSubmittedUsersImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAllSubmittedUsersImplCopyWith<_$GetAllSubmittedUsersImpl>
      get copyWith =>
          __$$GetAllSubmittedUsersImplCopyWithImpl<_$GetAllSubmittedUsersImpl>(
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? updateUserTime,
    TResult? Function(bool isOnline)? updateUserOnlineStatus,
    TResult? Function(int id, String password)? getUserById,
    TResult? Function()? getAllUsers,
    TResult? Function(String id)? getAllSubmittedUsers,
  }) {
    return getAllSubmittedUsers?.call(id);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_UpdateUserTime value)? updateUserTime,
    TResult? Function(_UpdateUserOnlineStatus value)? updateUserOnlineStatus,
    TResult? Function(_GetUserById value)? getUserById,
    TResult? Function(_GetAllUsers value)? getAllUsers,
    TResult? Function(_GetAllSubmittedUsers value)? getAllSubmittedUsers,
  }) {
    return getAllSubmittedUsers?.call(this);
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
  const factory _GetAllSubmittedUsers({required final String id}) =
      _$GetAllSubmittedUsersImpl;

  String get id;
  @JsonKey(ignore: true)
  _$$GetAllSubmittedUsersImplCopyWith<_$GetAllSubmittedUsersImpl>
      get copyWith => throw _privateConstructorUsedError;
}

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
      _$UserAuthStateCopyWithImpl<$Res, UserAuthState>;
  @useResult
  $Res call(
      {UserEntity user,
      List<UserEntity> users,
      List<UserEntity> submittedUsers,
      UserStatus userStatus,
      Option<Either<Failure, UserEntity>> authFailureOrSuccessOption});
}

/// @nodoc
class _$UserAuthStateCopyWithImpl<$Res, $Val extends UserAuthState>
    implements $UserAuthStateCopyWith<$Res> {
  _$UserAuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? users = null,
    Object? submittedUsers = null,
    Object? userStatus = null,
    Object? authFailureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserEntity,
      users: null == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<UserEntity>,
      submittedUsers: null == submittedUsers
          ? _value.submittedUsers
          : submittedUsers // ignore: cast_nullable_to_non_nullable
              as List<UserEntity>,
      userStatus: null == userStatus
          ? _value.userStatus
          : userStatus // ignore: cast_nullable_to_non_nullable
              as UserStatus,
      authFailureOrSuccessOption: null == authFailureOrSuccessOption
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, UserEntity>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserAuthStateImplCopyWith<$Res>
    implements $UserAuthStateCopyWith<$Res> {
  factory _$$UserAuthStateImplCopyWith(
          _$UserAuthStateImpl value, $Res Function(_$UserAuthStateImpl) then) =
      __$$UserAuthStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UserEntity user,
      List<UserEntity> users,
      List<UserEntity> submittedUsers,
      UserStatus userStatus,
      Option<Either<Failure, UserEntity>> authFailureOrSuccessOption});
}

/// @nodoc
class __$$UserAuthStateImplCopyWithImpl<$Res>
    extends _$UserAuthStateCopyWithImpl<$Res, _$UserAuthStateImpl>
    implements _$$UserAuthStateImplCopyWith<$Res> {
  __$$UserAuthStateImplCopyWithImpl(
      _$UserAuthStateImpl _value, $Res Function(_$UserAuthStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? users = null,
    Object? submittedUsers = null,
    Object? userStatus = null,
    Object? authFailureOrSuccessOption = null,
  }) {
    return _then(_$UserAuthStateImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserEntity,
      users: null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<UserEntity>,
      submittedUsers: null == submittedUsers
          ? _value._submittedUsers
          : submittedUsers // ignore: cast_nullable_to_non_nullable
              as List<UserEntity>,
      userStatus: null == userStatus
          ? _value.userStatus
          : userStatus // ignore: cast_nullable_to_non_nullable
              as UserStatus,
      authFailureOrSuccessOption: null == authFailureOrSuccessOption
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, UserEntity>>,
    ));
  }
}

/// @nodoc

class _$UserAuthStateImpl implements _UserAuthState {
  const _$UserAuthStateImpl(
      {required this.user,
      required final List<UserEntity> users,
      required final List<UserEntity> submittedUsers,
      required this.userStatus,
      required this.authFailureOrSuccessOption})
      : _users = users,
        _submittedUsers = submittedUsers;

  @override
  final UserEntity user;
  final List<UserEntity> _users;
  @override
  List<UserEntity> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  final List<UserEntity> _submittedUsers;
  @override
  List<UserEntity> get submittedUsers {
    if (_submittedUsers is EqualUnmodifiableListView) return _submittedUsers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_submittedUsers);
  }

  @override
  final UserStatus userStatus;
  @override
  final Option<Either<Failure, UserEntity>> authFailureOrSuccessOption;

  @override
  String toString() {
    return 'UserAuthState(user: $user, users: $users, submittedUsers: $submittedUsers, userStatus: $userStatus, authFailureOrSuccessOption: $authFailureOrSuccessOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserAuthStateImpl &&
            (identical(other.user, user) || other.user == user) &&
            const DeepCollectionEquality().equals(other._users, _users) &&
            const DeepCollectionEquality()
                .equals(other._submittedUsers, _submittedUsers) &&
            (identical(other.userStatus, userStatus) ||
                other.userStatus == userStatus) &&
            (identical(other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption) ||
                other.authFailureOrSuccessOption ==
                    authFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      user,
      const DeepCollectionEquality().hash(_users),
      const DeepCollectionEquality().hash(_submittedUsers),
      userStatus,
      authFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserAuthStateImplCopyWith<_$UserAuthStateImpl> get copyWith =>
      __$$UserAuthStateImplCopyWithImpl<_$UserAuthStateImpl>(this, _$identity);
}

abstract class _UserAuthState implements UserAuthState {
  const factory _UserAuthState(
      {required final UserEntity user,
      required final List<UserEntity> users,
      required final List<UserEntity> submittedUsers,
      required final UserStatus userStatus,
      required final Option<Either<Failure, UserEntity>>
          authFailureOrSuccessOption}) = _$UserAuthStateImpl;

  @override
  UserEntity get user;
  @override
  List<UserEntity> get users;
  @override
  List<UserEntity> get submittedUsers;
  @override
  UserStatus get userStatus;
  @override
  Option<Either<Failure, UserEntity>> get authFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$UserAuthStateImplCopyWith<_$UserAuthStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
