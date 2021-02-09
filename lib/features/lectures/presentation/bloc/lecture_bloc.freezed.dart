// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'lecture_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$LectureEventTearOff {
  const _$LectureEventTearOff();

// ignore: unused_element
  _Started started() {
    return const _Started();
  }

// ignore: unused_element
  _PostLecture postLecture() {
    return const _PostLecture();
  }
}

/// @nodoc
// ignore: unused_element
const $LectureEvent = _$LectureEventTearOff();

/// @nodoc
mixin _$LectureEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(),
    @required TResult postLecture(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult postLecture(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required TResult postLecture(_PostLecture value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult postLecture(_PostLecture value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $LectureEventCopyWith<$Res> {
  factory $LectureEventCopyWith(
          LectureEvent value, $Res Function(LectureEvent) then) =
      _$LectureEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LectureEventCopyWithImpl<$Res> implements $LectureEventCopyWith<$Res> {
  _$LectureEventCopyWithImpl(this._value, this._then);

  final LectureEvent _value;
  // ignore: unused_field
  final $Res Function(LectureEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$LectureEventCopyWithImpl<$Res>
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
    return 'LectureEvent.started()';
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
    @required TResult postLecture(),
  }) {
    assert(started != null);
    assert(postLecture != null);
    return started();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult postLecture(),
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
    @required TResult postLecture(_PostLecture value),
  }) {
    assert(started != null);
    assert(postLecture != null);
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult postLecture(_PostLecture value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements LectureEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$PostLectureCopyWith<$Res> {
  factory _$PostLectureCopyWith(
          _PostLecture value, $Res Function(_PostLecture) then) =
      __$PostLectureCopyWithImpl<$Res>;
}

/// @nodoc
class __$PostLectureCopyWithImpl<$Res> extends _$LectureEventCopyWithImpl<$Res>
    implements _$PostLectureCopyWith<$Res> {
  __$PostLectureCopyWithImpl(
      _PostLecture _value, $Res Function(_PostLecture) _then)
      : super(_value, (v) => _then(v as _PostLecture));

  @override
  _PostLecture get _value => super._value as _PostLecture;
}

/// @nodoc
class _$_PostLecture implements _PostLecture {
  const _$_PostLecture();

  @override
  String toString() {
    return 'LectureEvent.postLecture()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _PostLecture);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(),
    @required TResult postLecture(),
  }) {
    assert(started != null);
    assert(postLecture != null);
    return postLecture();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult postLecture(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (postLecture != null) {
      return postLecture();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required TResult postLecture(_PostLecture value),
  }) {
    assert(started != null);
    assert(postLecture != null);
    return postLecture(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult postLecture(_PostLecture value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (postLecture != null) {
      return postLecture(this);
    }
    return orElse();
  }
}

abstract class _PostLecture implements LectureEvent {
  const factory _PostLecture() = _$_PostLecture;
}

/// @nodoc
class _$LectureStateTearOff {
  const _$LectureStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _LectureLoaded lectureLoaded({@required LectureEntity lectureEntity}) {
    return _LectureLoaded(
      lectureEntity: lectureEntity,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $LectureState = _$LectureStateTearOff();

/// @nodoc
mixin _$LectureState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult lectureLoaded(LectureEntity lectureEntity),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult lectureLoaded(LectureEntity lectureEntity),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult lectureLoaded(_LectureLoaded value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult lectureLoaded(_LectureLoaded value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $LectureStateCopyWith<$Res> {
  factory $LectureStateCopyWith(
          LectureState value, $Res Function(LectureState) then) =
      _$LectureStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LectureStateCopyWithImpl<$Res> implements $LectureStateCopyWith<$Res> {
  _$LectureStateCopyWithImpl(this._value, this._then);

  final LectureState _value;
  // ignore: unused_field
  final $Res Function(LectureState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$LectureStateCopyWithImpl<$Res>
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
    return 'LectureState.initial()';
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
    @required TResult lectureLoaded(LectureEntity lectureEntity),
  }) {
    assert(initial != null);
    assert(lectureLoaded != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult lectureLoaded(LectureEntity lectureEntity),
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
    @required TResult lectureLoaded(_LectureLoaded value),
  }) {
    assert(initial != null);
    assert(lectureLoaded != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult lectureLoaded(_LectureLoaded value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements LectureState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LectureLoadedCopyWith<$Res> {
  factory _$LectureLoadedCopyWith(
          _LectureLoaded value, $Res Function(_LectureLoaded) then) =
      __$LectureLoadedCopyWithImpl<$Res>;
  $Res call({LectureEntity lectureEntity});
}

/// @nodoc
class __$LectureLoadedCopyWithImpl<$Res>
    extends _$LectureStateCopyWithImpl<$Res>
    implements _$LectureLoadedCopyWith<$Res> {
  __$LectureLoadedCopyWithImpl(
      _LectureLoaded _value, $Res Function(_LectureLoaded) _then)
      : super(_value, (v) => _then(v as _LectureLoaded));

  @override
  _LectureLoaded get _value => super._value as _LectureLoaded;

  @override
  $Res call({
    Object lectureEntity = freezed,
  }) {
    return _then(_LectureLoaded(
      lectureEntity: lectureEntity == freezed
          ? _value.lectureEntity
          : lectureEntity as LectureEntity,
    ));
  }
}

/// @nodoc
class _$_LectureLoaded implements _LectureLoaded {
  const _$_LectureLoaded({@required this.lectureEntity})
      : assert(lectureEntity != null);

  @override
  final LectureEntity lectureEntity;

  @override
  String toString() {
    return 'LectureState.lectureLoaded(lectureEntity: $lectureEntity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LectureLoaded &&
            (identical(other.lectureEntity, lectureEntity) ||
                const DeepCollectionEquality()
                    .equals(other.lectureEntity, lectureEntity)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(lectureEntity);

  @JsonKey(ignore: true)
  @override
  _$LectureLoadedCopyWith<_LectureLoaded> get copyWith =>
      __$LectureLoadedCopyWithImpl<_LectureLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult lectureLoaded(LectureEntity lectureEntity),
  }) {
    assert(initial != null);
    assert(lectureLoaded != null);
    return lectureLoaded(lectureEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult lectureLoaded(LectureEntity lectureEntity),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (lectureLoaded != null) {
      return lectureLoaded(lectureEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult lectureLoaded(_LectureLoaded value),
  }) {
    assert(initial != null);
    assert(lectureLoaded != null);
    return lectureLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult lectureLoaded(_LectureLoaded value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (lectureLoaded != null) {
      return lectureLoaded(this);
    }
    return orElse();
  }
}

abstract class _LectureLoaded implements LectureState {
  const factory _LectureLoaded({@required LectureEntity lectureEntity}) =
      _$_LectureLoaded;

  LectureEntity get lectureEntity;
  @JsonKey(ignore: true)
  _$LectureLoadedCopyWith<_LectureLoaded> get copyWith;
}
