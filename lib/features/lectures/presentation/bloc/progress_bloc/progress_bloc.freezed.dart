// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'progress_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ProgressEventTearOff {
  const _$ProgressEventTearOff();

  _Started started() {
    return const _Started();
  }

  _Resume resume() {
    return const _Resume();
  }

  _Pause pause() {
    return const _Pause();
  }

  _Cancel cancel() {
    return const _Cancel();
  }

  _Updated updated(TaskSnapshot task) {
    return _Updated(
      task,
    );
  }
}

/// @nodoc
const $ProgressEvent = _$ProgressEventTearOff();

/// @nodoc
mixin _$ProgressEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() resume,
    required TResult Function() pause,
    required TResult Function() cancel,
    required TResult Function(TaskSnapshot task) updated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? resume,
    TResult Function()? pause,
    TResult Function()? cancel,
    TResult Function(TaskSnapshot task)? updated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Resume value) resume,
    required TResult Function(_Pause value) pause,
    required TResult Function(_Cancel value) cancel,
    required TResult Function(_Updated value) updated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Resume value)? resume,
    TResult Function(_Pause value)? pause,
    TResult Function(_Cancel value)? cancel,
    TResult Function(_Updated value)? updated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
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
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() resume,
    required TResult Function() pause,
    required TResult Function() cancel,
    required TResult Function(TaskSnapshot task) updated,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? resume,
    TResult Function()? pause,
    TResult Function()? cancel,
    TResult Function(TaskSnapshot task)? updated,
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
    required TResult Function(_Resume value) resume,
    required TResult Function(_Pause value) pause,
    required TResult Function(_Cancel value) cancel,
    required TResult Function(_Updated value) updated,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Resume value)? resume,
    TResult Function(_Pause value)? pause,
    TResult Function(_Cancel value)? cancel,
    TResult Function(_Updated value)? updated,
    required TResult orElse(),
  }) {
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
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() resume,
    required TResult Function() pause,
    required TResult Function() cancel,
    required TResult Function(TaskSnapshot task) updated,
  }) {
    return resume();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? resume,
    TResult Function()? pause,
    TResult Function()? cancel,
    TResult Function(TaskSnapshot task)? updated,
    required TResult orElse(),
  }) {
    if (resume != null) {
      return resume();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Resume value) resume,
    required TResult Function(_Pause value) pause,
    required TResult Function(_Cancel value) cancel,
    required TResult Function(_Updated value) updated,
  }) {
    return resume(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Resume value)? resume,
    TResult Function(_Pause value)? pause,
    TResult Function(_Cancel value)? cancel,
    TResult Function(_Updated value)? updated,
    required TResult orElse(),
  }) {
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
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() resume,
    required TResult Function() pause,
    required TResult Function() cancel,
    required TResult Function(TaskSnapshot task) updated,
  }) {
    return pause();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? resume,
    TResult Function()? pause,
    TResult Function()? cancel,
    TResult Function(TaskSnapshot task)? updated,
    required TResult orElse(),
  }) {
    if (pause != null) {
      return pause();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Resume value) resume,
    required TResult Function(_Pause value) pause,
    required TResult Function(_Cancel value) cancel,
    required TResult Function(_Updated value) updated,
  }) {
    return pause(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Resume value)? resume,
    TResult Function(_Pause value)? pause,
    TResult Function(_Cancel value)? cancel,
    TResult Function(_Updated value)? updated,
    required TResult orElse(),
  }) {
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
abstract class _$CancelCopyWith<$Res> {
  factory _$CancelCopyWith(_Cancel value, $Res Function(_Cancel) then) =
      __$CancelCopyWithImpl<$Res>;
}

/// @nodoc
class __$CancelCopyWithImpl<$Res> extends _$ProgressEventCopyWithImpl<$Res>
    implements _$CancelCopyWith<$Res> {
  __$CancelCopyWithImpl(_Cancel _value, $Res Function(_Cancel) _then)
      : super(_value, (v) => _then(v as _Cancel));

  @override
  _Cancel get _value => super._value as _Cancel;
}

/// @nodoc

class _$_Cancel implements _Cancel {
  const _$_Cancel();

  @override
  String toString() {
    return 'ProgressEvent.cancel()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Cancel);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() resume,
    required TResult Function() pause,
    required TResult Function() cancel,
    required TResult Function(TaskSnapshot task) updated,
  }) {
    return cancel();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? resume,
    TResult Function()? pause,
    TResult Function()? cancel,
    TResult Function(TaskSnapshot task)? updated,
    required TResult orElse(),
  }) {
    if (cancel != null) {
      return cancel();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Resume value) resume,
    required TResult Function(_Pause value) pause,
    required TResult Function(_Cancel value) cancel,
    required TResult Function(_Updated value) updated,
  }) {
    return cancel(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Resume value)? resume,
    TResult Function(_Pause value)? pause,
    TResult Function(_Cancel value)? cancel,
    TResult Function(_Updated value)? updated,
    required TResult orElse(),
  }) {
    if (cancel != null) {
      return cancel(this);
    }
    return orElse();
  }
}

abstract class _Cancel implements ProgressEvent {
  const factory _Cancel() = _$_Cancel;
}

/// @nodoc
abstract class _$UpdatedCopyWith<$Res> {
  factory _$UpdatedCopyWith(_Updated value, $Res Function(_Updated) then) =
      __$UpdatedCopyWithImpl<$Res>;
  $Res call({TaskSnapshot task});
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
    Object? task = freezed,
  }) {
    return _then(_Updated(
      task == freezed
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as TaskSnapshot,
    ));
  }
}

/// @nodoc

class _$_Updated implements _Updated {
  const _$_Updated(this.task);

  @override
  final TaskSnapshot task;

  @override
  String toString() {
    return 'ProgressEvent.updated(task: $task)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Updated &&
            (identical(other.task, task) ||
                const DeepCollectionEquality().equals(other.task, task)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(task);

  @JsonKey(ignore: true)
  @override
  _$UpdatedCopyWith<_Updated> get copyWith =>
      __$UpdatedCopyWithImpl<_Updated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() resume,
    required TResult Function() pause,
    required TResult Function() cancel,
    required TResult Function(TaskSnapshot task) updated,
  }) {
    return updated(task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? resume,
    TResult Function()? pause,
    TResult Function()? cancel,
    TResult Function(TaskSnapshot task)? updated,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated(task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Resume value) resume,
    required TResult Function(_Pause value) pause,
    required TResult Function(_Cancel value) cancel,
    required TResult Function(_Updated value) updated,
  }) {
    return updated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Resume value)? resume,
    TResult Function(_Pause value)? pause,
    TResult Function(_Cancel value)? cancel,
    TResult Function(_Updated value)? updated,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated(this);
    }
    return orElse();
  }
}

abstract class _Updated implements ProgressEvent {
  const factory _Updated(TaskSnapshot task) = _$_Updated;

  TaskSnapshot get task => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$UpdatedCopyWith<_Updated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ProgressStateTearOff {
  const _$ProgressStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _Loading loading({required double percentage}) {
    return _Loading(
      percentage: percentage,
    );
  }

  _Resumed resumed() {
    return const _Resumed();
  }

  _Loaded loaded() {
    return const _Loaded();
  }
}

/// @nodoc
const $ProgressState = _$ProgressStateTearOff();

/// @nodoc
mixin _$ProgressState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(double percentage) loading,
    required TResult Function() resumed,
    required TResult Function() loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(double percentage)? loading,
    TResult Function()? resumed,
    TResult Function()? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Resumed value) resumed,
    required TResult Function(_Loaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Resumed value)? resumed,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
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
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(double percentage) loading,
    required TResult Function() resumed,
    required TResult Function() loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(double percentage)? loading,
    TResult Function()? resumed,
    TResult Function()? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Resumed value) resumed,
    required TResult Function(_Loaded value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Resumed value)? resumed,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
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
  $Res call({double percentage});
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
    Object? percentage = freezed,
  }) {
    return _then(_Loading(
      percentage: percentage == freezed
          ? _value.percentage
          : percentage // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading({required this.percentage});

  @override
  final double percentage;

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
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(double percentage) loading,
    required TResult Function() resumed,
    required TResult Function() loaded,
  }) {
    return loading(percentage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(double percentage)? loading,
    TResult Function()? resumed,
    TResult Function()? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(percentage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Resumed value) resumed,
    required TResult Function(_Loaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Resumed value)? resumed,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements ProgressState {
  const factory _Loading({required double percentage}) = _$_Loading;

  double get percentage => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadingCopyWith<_Loading> get copyWith =>
      throw _privateConstructorUsedError;
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
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(double percentage) loading,
    required TResult Function() resumed,
    required TResult Function() loaded,
  }) {
    return resumed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(double percentage)? loading,
    TResult Function()? resumed,
    TResult Function()? loaded,
    required TResult orElse(),
  }) {
    if (resumed != null) {
      return resumed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Resumed value) resumed,
    required TResult Function(_Loaded value) loaded,
  }) {
    return resumed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Resumed value)? resumed,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
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
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(double percentage) loading,
    required TResult Function() resumed,
    required TResult Function() loaded,
  }) {
    return loaded();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(double percentage)? loading,
    TResult Function()? resumed,
    TResult Function()? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Resumed value) resumed,
    required TResult Function(_Loaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Resumed value)? resumed,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements ProgressState {
  const factory _Loaded() = _$_Loaded;
}
