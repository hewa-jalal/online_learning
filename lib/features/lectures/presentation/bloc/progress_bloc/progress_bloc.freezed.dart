// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'progress_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ProgressEventTearOff {
  const _$ProgressEventTearOff();

// ignore: unused_element
  _Started started() {
    return const _Started();
  }

// ignore: unused_element
  _Resume resume() {
    return const _Resume();
  }

// ignore: unused_element
  _Pause pause() {
    return const _Pause();
  }

// ignore: unused_element
  _Updated updated(int tickCount) {
    return _Updated(
      tickCount,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ProgressEvent = _$ProgressEventTearOff();

/// @nodoc
mixin _$ProgressEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(),
    @required TResult resume(),
    @required TResult pause(),
    @required TResult updated(int tickCount),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult resume(),
    TResult pause(),
    TResult updated(int tickCount),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required TResult resume(_Resume value),
    @required TResult pause(_Pause value),
    @required TResult updated(_Updated value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult resume(_Resume value),
    TResult pause(_Pause value),
    TResult updated(_Updated value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $ProgressEventCopyWith<$Res> {
  factory $ProgressEventCopyWith(
          ProgressEvent value, $Res Function(ProgressEvent) then) =
      _$ProgressEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProgressEventCopyWithImpl<$Res>
    implements $ProgressEventCopyWith<$Res> {
  _$ProgressEventCopyWithImpl(this._value, this._then);

  final ProgressEvent _value;
  // ignore: unused_field
  final $Res Function(ProgressEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$ProgressEventCopyWithImpl<$Res>
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
    return 'ProgressEvent.started()';
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
    @required TResult resume(),
    @required TResult pause(),
    @required TResult updated(int tickCount),
  }) {
    assert(started != null);
    assert(resume != null);
    assert(pause != null);
    assert(updated != null);
    return started();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult resume(),
    TResult pause(),
    TResult updated(int tickCount),
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
    @required TResult resume(_Resume value),
    @required TResult pause(_Pause value),
    @required TResult updated(_Updated value),
  }) {
    assert(started != null);
    assert(resume != null);
    assert(pause != null);
    assert(updated != null);
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult resume(_Resume value),
    TResult pause(_Pause value),
    TResult updated(_Updated value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ProgressEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$ResumeCopyWith<$Res> {
  factory _$ResumeCopyWith(_Resume value, $Res Function(_Resume) then) =
      __$ResumeCopyWithImpl<$Res>;
}

/// @nodoc
class __$ResumeCopyWithImpl<$Res> extends _$ProgressEventCopyWithImpl<$Res>
    implements _$ResumeCopyWith<$Res> {
  __$ResumeCopyWithImpl(_Resume _value, $Res Function(_Resume) _then)
      : super(_value, (v) => _then(v as _Resume));

  @override
  _Resume get _value => super._value as _Resume;
}

/// @nodoc
class _$_Resume implements _Resume {
  const _$_Resume();

  @override
  String toString() {
    return 'ProgressEvent.resume()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Resume);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(),
    @required TResult resume(),
    @required TResult pause(),
    @required TResult updated(int tickCount),
  }) {
    assert(started != null);
    assert(resume != null);
    assert(pause != null);
    assert(updated != null);
    return resume();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult resume(),
    TResult pause(),
    TResult updated(int tickCount),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (resume != null) {
      return resume();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required TResult resume(_Resume value),
    @required TResult pause(_Pause value),
    @required TResult updated(_Updated value),
  }) {
    assert(started != null);
    assert(resume != null);
    assert(pause != null);
    assert(updated != null);
    return resume(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult resume(_Resume value),
    TResult pause(_Pause value),
    TResult updated(_Updated value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (resume != null) {
      return resume(this);
    }
    return orElse();
  }
}

abstract class _Resume implements ProgressEvent {
  const factory _Resume() = _$_Resume;
}

/// @nodoc
abstract class _$PauseCopyWith<$Res> {
  factory _$PauseCopyWith(_Pause value, $Res Function(_Pause) then) =
      __$PauseCopyWithImpl<$Res>;
}

/// @nodoc
class __$PauseCopyWithImpl<$Res> extends _$ProgressEventCopyWithImpl<$Res>
    implements _$PauseCopyWith<$Res> {
  __$PauseCopyWithImpl(_Pause _value, $Res Function(_Pause) _then)
      : super(_value, (v) => _then(v as _Pause));

  @override
  _Pause get _value => super._value as _Pause;
}

/// @nodoc
class _$_Pause implements _Pause {
  const _$_Pause();

  @override
  String toString() {
    return 'ProgressEvent.pause()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Pause);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(),
    @required TResult resume(),
    @required TResult pause(),
    @required TResult updated(int tickCount),
  }) {
    assert(started != null);
    assert(resume != null);
    assert(pause != null);
    assert(updated != null);
    return pause();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult resume(),
    TResult pause(),
    TResult updated(int tickCount),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (pause != null) {
      return pause();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required TResult resume(_Resume value),
    @required TResult pause(_Pause value),
    @required TResult updated(_Updated value),
  }) {
    assert(started != null);
    assert(resume != null);
    assert(pause != null);
    assert(updated != null);
    return pause(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult resume(_Resume value),
    TResult pause(_Pause value),
    TResult updated(_Updated value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (pause != null) {
      return pause(this);
    }
    return orElse();
  }
}

abstract class _Pause implements ProgressEvent {
  const factory _Pause() = _$_Pause;
}

/// @nodoc
abstract class _$UpdatedCopyWith<$Res> {
  factory _$UpdatedCopyWith(_Updated value, $Res Function(_Updated) then) =
      __$UpdatedCopyWithImpl<$Res>;
  $Res call({int tickCount});
}

/// @nodoc
class __$UpdatedCopyWithImpl<$Res> extends _$ProgressEventCopyWithImpl<$Res>
    implements _$UpdatedCopyWith<$Res> {
  __$UpdatedCopyWithImpl(_Updated _value, $Res Function(_Updated) _then)
      : super(_value, (v) => _then(v as _Updated));

  @override
  _Updated get _value => super._value as _Updated;

  @override
  $Res call({
    Object tickCount = freezed,
  }) {
    return _then(_Updated(
      tickCount == freezed ? _value.tickCount : tickCount as int,
    ));
  }
}

/// @nodoc
class _$_Updated implements _Updated {
  const _$_Updated(this.tickCount) : assert(tickCount != null);

  @override
  final int tickCount;

  @override
  String toString() {
    return 'ProgressEvent.updated(tickCount: $tickCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Updated &&
            (identical(other.tickCount, tickCount) ||
                const DeepCollectionEquality()
                    .equals(other.tickCount, tickCount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(tickCount);

  @JsonKey(ignore: true)
  @override
  _$UpdatedCopyWith<_Updated> get copyWith =>
      __$UpdatedCopyWithImpl<_Updated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(),
    @required TResult resume(),
    @required TResult pause(),
    @required TResult updated(int tickCount),
  }) {
    assert(started != null);
    assert(resume != null);
    assert(pause != null);
    assert(updated != null);
    return updated(tickCount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult resume(),
    TResult pause(),
    TResult updated(int tickCount),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updated != null) {
      return updated(tickCount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required TResult resume(_Resume value),
    @required TResult pause(_Pause value),
    @required TResult updated(_Updated value),
  }) {
    assert(started != null);
    assert(resume != null);
    assert(pause != null);
    assert(updated != null);
    return updated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult resume(_Resume value),
    TResult pause(_Pause value),
    TResult updated(_Updated value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updated != null) {
      return updated(this);
    }
    return orElse();
  }
}

abstract class _Updated implements ProgressEvent {
  const factory _Updated(int tickCount) = _$_Updated;

  int get tickCount;
  @JsonKey(ignore: true)
  _$UpdatedCopyWith<_Updated> get copyWith;
}

/// @nodoc
class _$ProgressStateTearOff {
  const _$ProgressStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _Loading loading({@required int percentage}) {
    return _Loading(
      percentage: percentage,
    );
  }

// ignore: unused_element
  _Paused paused() {
    return const _Paused();
  }

// ignore: unused_element
  _Resumed resumed() {
    return const _Resumed();
  }

// ignore: unused_element
  _Loaded loaded() {
    return const _Loaded();
  }
}

/// @nodoc
// ignore: unused_element
const $ProgressState = _$ProgressStateTearOff();

/// @nodoc
mixin _$ProgressState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(int percentage),
    @required TResult paused(),
    @required TResult resumed(),
    @required TResult loaded(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(int percentage),
    TResult paused(),
    TResult resumed(),
    TResult loaded(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult paused(_Paused value),
    @required TResult resumed(_Resumed value),
    @required TResult loaded(_Loaded value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult paused(_Paused value),
    TResult resumed(_Resumed value),
    TResult loaded(_Loaded value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $ProgressStateCopyWith<$Res> {
  factory $ProgressStateCopyWith(
          ProgressState value, $Res Function(ProgressState) then) =
      _$ProgressStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProgressStateCopyWithImpl<$Res>
    implements $ProgressStateCopyWith<$Res> {
  _$ProgressStateCopyWithImpl(this._value, this._then);

  final ProgressState _value;
  // ignore: unused_field
  final $Res Function(ProgressState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$ProgressStateCopyWithImpl<$Res>
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
    return 'ProgressState.initial()';
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
    @required TResult loading(int percentage),
    @required TResult paused(),
    @required TResult resumed(),
    @required TResult loaded(),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(paused != null);
    assert(resumed != null);
    assert(loaded != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(int percentage),
    TResult paused(),
    TResult resumed(),
    TResult loaded(),
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
    @required TResult loading(_Loading value),
    @required TResult paused(_Paused value),
    @required TResult resumed(_Resumed value),
    @required TResult loaded(_Loaded value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(paused != null);
    assert(resumed != null);
    assert(loaded != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult paused(_Paused value),
    TResult resumed(_Resumed value),
    TResult loaded(_Loaded value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ProgressState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
  $Res call({int percentage});
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$ProgressStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;

  @override
  $Res call({
    Object percentage = freezed,
  }) {
    return _then(_Loading(
      percentage: percentage == freezed ? _value.percentage : percentage as int,
    ));
  }
}

/// @nodoc
class _$_Loading implements _Loading {
  const _$_Loading({@required this.percentage}) : assert(percentage != null);

  @override
  final int percentage;

  @override
  String toString() {
    return 'ProgressState.loading(percentage: $percentage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Loading &&
            (identical(other.percentage, percentage) ||
                const DeepCollectionEquality()
                    .equals(other.percentage, percentage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(percentage);

  @JsonKey(ignore: true)
  @override
  _$LoadingCopyWith<_Loading> get copyWith =>
      __$LoadingCopyWithImpl<_Loading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(int percentage),
    @required TResult paused(),
    @required TResult resumed(),
    @required TResult loaded(),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(paused != null);
    assert(resumed != null);
    assert(loaded != null);
    return loading(percentage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(int percentage),
    TResult paused(),
    TResult resumed(),
    TResult loaded(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(percentage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult paused(_Paused value),
    @required TResult resumed(_Resumed value),
    @required TResult loaded(_Loaded value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(paused != null);
    assert(resumed != null);
    assert(loaded != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult paused(_Paused value),
    TResult resumed(_Resumed value),
    TResult loaded(_Loaded value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements ProgressState {
  const factory _Loading({@required int percentage}) = _$_Loading;

  int get percentage;
  @JsonKey(ignore: true)
  _$LoadingCopyWith<_Loading> get copyWith;
}

/// @nodoc
abstract class _$PausedCopyWith<$Res> {
  factory _$PausedCopyWith(_Paused value, $Res Function(_Paused) then) =
      __$PausedCopyWithImpl<$Res>;
}

/// @nodoc
class __$PausedCopyWithImpl<$Res> extends _$ProgressStateCopyWithImpl<$Res>
    implements _$PausedCopyWith<$Res> {
  __$PausedCopyWithImpl(_Paused _value, $Res Function(_Paused) _then)
      : super(_value, (v) => _then(v as _Paused));

  @override
  _Paused get _value => super._value as _Paused;
}

/// @nodoc
class _$_Paused implements _Paused {
  const _$_Paused();

  @override
  String toString() {
    return 'ProgressState.paused()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Paused);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(int percentage),
    @required TResult paused(),
    @required TResult resumed(),
    @required TResult loaded(),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(paused != null);
    assert(resumed != null);
    assert(loaded != null);
    return paused();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(int percentage),
    TResult paused(),
    TResult resumed(),
    TResult loaded(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (paused != null) {
      return paused();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult paused(_Paused value),
    @required TResult resumed(_Resumed value),
    @required TResult loaded(_Loaded value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(paused != null);
    assert(resumed != null);
    assert(loaded != null);
    return paused(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult paused(_Paused value),
    TResult resumed(_Resumed value),
    TResult loaded(_Loaded value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (paused != null) {
      return paused(this);
    }
    return orElse();
  }
}

abstract class _Paused implements ProgressState {
  const factory _Paused() = _$_Paused;
}

/// @nodoc
abstract class _$ResumedCopyWith<$Res> {
  factory _$ResumedCopyWith(_Resumed value, $Res Function(_Resumed) then) =
      __$ResumedCopyWithImpl<$Res>;
}

/// @nodoc
class __$ResumedCopyWithImpl<$Res> extends _$ProgressStateCopyWithImpl<$Res>
    implements _$ResumedCopyWith<$Res> {
  __$ResumedCopyWithImpl(_Resumed _value, $Res Function(_Resumed) _then)
      : super(_value, (v) => _then(v as _Resumed));

  @override
  _Resumed get _value => super._value as _Resumed;
}

/// @nodoc
class _$_Resumed implements _Resumed {
  const _$_Resumed();

  @override
  String toString() {
    return 'ProgressState.resumed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Resumed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(int percentage),
    @required TResult paused(),
    @required TResult resumed(),
    @required TResult loaded(),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(paused != null);
    assert(resumed != null);
    assert(loaded != null);
    return resumed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(int percentage),
    TResult paused(),
    TResult resumed(),
    TResult loaded(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (resumed != null) {
      return resumed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult paused(_Paused value),
    @required TResult resumed(_Resumed value),
    @required TResult loaded(_Loaded value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(paused != null);
    assert(resumed != null);
    assert(loaded != null);
    return resumed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult paused(_Paused value),
    TResult resumed(_Resumed value),
    TResult loaded(_Loaded value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (resumed != null) {
      return resumed(this);
    }
    return orElse();
  }
}

abstract class _Resumed implements ProgressState {
  const factory _Resumed() = _$_Resumed;
}

/// @nodoc
abstract class _$LoadedCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) then) =
      __$LoadedCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadedCopyWithImpl<$Res> extends _$ProgressStateCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(_Loaded _value, $Res Function(_Loaded) _then)
      : super(_value, (v) => _then(v as _Loaded));

  @override
  _Loaded get _value => super._value as _Loaded;
}

/// @nodoc
class _$_Loaded implements _Loaded {
  const _$_Loaded();

  @override
  String toString() {
    return 'ProgressState.loaded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Loaded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(int percentage),
    @required TResult paused(),
    @required TResult resumed(),
    @required TResult loaded(),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(paused != null);
    assert(resumed != null);
    assert(loaded != null);
    return loaded();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(int percentage),
    TResult paused(),
    TResult resumed(),
    TResult loaded(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult paused(_Paused value),
    @required TResult resumed(_Resumed value),
    @required TResult loaded(_Loaded value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(paused != null);
    assert(resumed != null);
    assert(loaded != null);
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult paused(_Paused value),
    TResult resumed(_Resumed value),
    TResult loaded(_Loaded value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements ProgressState {
  const factory _Loaded() = _$_Loaded;
}
