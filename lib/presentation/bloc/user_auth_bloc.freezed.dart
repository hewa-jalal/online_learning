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
  _GetUserById getUserById({@required int id}) {
    return _GetUserById(
      id: id,
    );
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
    @required TResult getUserById(int id),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult getUserById(int id),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required TResult getUserById(_GetUserById value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult getUserById(_GetUserById value),
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
    @required TResult getUserById(int id),
  }) {
    assert(started != null);
    assert(getUserById != null);
    return started();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult getUserById(int id),
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
    @required TResult getUserById(_GetUserById value),
  }) {
    assert(started != null);
    assert(getUserById != null);
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult getUserById(_GetUserById value),
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
    @required TResult getUserById(int id),
  }) {
    assert(started != null);
    assert(getUserById != null);
    return getUserById(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult getUserById(int id),
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
    @required TResult getUserById(_GetUserById value),
  }) {
    assert(started != null);
    assert(getUserById != null);
    return getUserById(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult getUserById(_GetUserById value),
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
class _$UserAuthStateTearOff {
  const _$UserAuthStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _UserLoaded userLoaded({@required UserEntity user}) {
    return _UserLoaded(
      user: user,
    );
  }

// ignore: unused_element
  _UserError userError() {
    return const _UserError();
  }
}

/// @nodoc
// ignore: unused_element
const $UserAuthState = _$UserAuthStateTearOff();

/// @nodoc
mixin _$UserAuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult userLoaded(UserEntity user),
    @required TResult userError(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult userLoaded(UserEntity user),
    TResult userError(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult userLoaded(_UserLoaded value),
    @required TResult userError(_UserError value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult userLoaded(_UserLoaded value),
    TResult userError(_UserError value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $UserAuthStateCopyWith<$Res> {
  factory $UserAuthStateCopyWith(
          UserAuthState value, $Res Function(UserAuthState) then) =
      _$UserAuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserAuthStateCopyWithImpl<$Res>
    implements $UserAuthStateCopyWith<$Res> {
  _$UserAuthStateCopyWithImpl(this._value, this._then);

  final UserAuthState _value;
  // ignore: unused_field
  final $Res Function(UserAuthState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$UserAuthStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc
class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'UserAuthState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult userLoaded(UserEntity user),
    @required TResult userError(),
  }) {
    assert(initial != null);
    assert(userLoaded != null);
    assert(userError != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult userLoaded(UserEntity user),
    TResult userError(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult userLoaded(_UserLoaded value),
    @required TResult userError(_UserError value),
  }) {
    assert(initial != null);
    assert(userLoaded != null);
    assert(userError != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult userLoaded(_UserLoaded value),
    TResult userError(_UserError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements UserAuthState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$UserLoadedCopyWith<$Res> {
  factory _$UserLoadedCopyWith(
          _UserLoaded value, $Res Function(_UserLoaded) then) =
      __$UserLoadedCopyWithImpl<$Res>;
  $Res call({UserEntity user});
}

/// @nodoc
class __$UserLoadedCopyWithImpl<$Res> extends _$UserAuthStateCopyWithImpl<$Res>
    implements _$UserLoadedCopyWith<$Res> {
  __$UserLoadedCopyWithImpl(
      _UserLoaded _value, $Res Function(_UserLoaded) _then)
      : super(_value, (v) => _then(v as _UserLoaded));

  @override
  _UserLoaded get _value => super._value as _UserLoaded;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(_UserLoaded(
      user: user == freezed ? _value.user : user as UserEntity,
    ));
  }
}

/// @nodoc
class _$_UserLoaded implements _UserLoaded {
  const _$_UserLoaded({@required this.user}) : assert(user != null);

  @override
  final UserEntity user;

  @override
  String toString() {
    return 'UserAuthState.userLoaded(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserLoaded &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  _$UserLoadedCopyWith<_UserLoaded> get copyWith =>
      __$UserLoadedCopyWithImpl<_UserLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult userLoaded(UserEntity user),
    @required TResult userError(),
  }) {
    assert(initial != null);
    assert(userLoaded != null);
    assert(userError != null);
    return userLoaded(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult userLoaded(UserEntity user),
    TResult userError(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (userLoaded != null) {
      return userLoaded(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult userLoaded(_UserLoaded value),
    @required TResult userError(_UserError value),
  }) {
    assert(initial != null);
    assert(userLoaded != null);
    assert(userError != null);
    return userLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult userLoaded(_UserLoaded value),
    TResult userError(_UserError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (userLoaded != null) {
      return userLoaded(this);
    }
    return orElse();
  }
}

abstract class _UserLoaded implements UserAuthState {
  const factory _UserLoaded({@required UserEntity user}) = _$_UserLoaded;

  UserEntity get user;
  @JsonKey(ignore: true)
  _$UserLoadedCopyWith<_UserLoaded> get copyWith;
}

/// @nodoc
abstract class _$UserErrorCopyWith<$Res> {
  factory _$UserErrorCopyWith(
          _UserError value, $Res Function(_UserError) then) =
      __$UserErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$UserErrorCopyWithImpl<$Res> extends _$UserAuthStateCopyWithImpl<$Res>
    implements _$UserErrorCopyWith<$Res> {
  __$UserErrorCopyWithImpl(_UserError _value, $Res Function(_UserError) _then)
      : super(_value, (v) => _then(v as _UserError));

  @override
  _UserError get _value => super._value as _UserError;
}

/// @nodoc
class _$_UserError implements _UserError {
  const _$_UserError();

  @override
  String toString() {
    return 'UserAuthState.userError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _UserError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult userLoaded(UserEntity user),
    @required TResult userError(),
  }) {
    assert(initial != null);
    assert(userLoaded != null);
    assert(userError != null);
    return userError();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult userLoaded(UserEntity user),
    TResult userError(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (userError != null) {
      return userError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult userLoaded(_UserLoaded value),
    @required TResult userError(_UserError value),
  }) {
    assert(initial != null);
    assert(userLoaded != null);
    assert(userError != null);
    return userError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult userLoaded(_UserLoaded value),
    TResult userError(_UserError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (userError != null) {
      return userError(this);
    }
    return orElse();
  }
}

abstract class _UserError implements UserAuthState {
  const factory _UserError() = _$_UserError;
}
