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
  _DownloadLecture downloadLecture({@required String fileUrl}) {
    return _DownloadLecture(
      fileUrl: fileUrl,
    );
  }

// ignore: unused_element
  _UploadLecture uploadLecture() {
    return const _UploadLecture();
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
    @required TResult downloadLecture(String fileUrl),
    @required TResult uploadLecture(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult downloadLecture(String fileUrl),
    TResult uploadLecture(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required TResult downloadLecture(_DownloadLecture value),
    @required TResult uploadLecture(_UploadLecture value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult downloadLecture(_DownloadLecture value),
    TResult uploadLecture(_UploadLecture value),
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
    @required TResult downloadLecture(String fileUrl),
    @required TResult uploadLecture(),
  }) {
    assert(started != null);
    assert(downloadLecture != null);
    assert(uploadLecture != null);
    return started();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult downloadLecture(String fileUrl),
    TResult uploadLecture(),
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
    @required TResult downloadLecture(_DownloadLecture value),
    @required TResult uploadLecture(_UploadLecture value),
  }) {
    assert(started != null);
    assert(downloadLecture != null);
    assert(uploadLecture != null);
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult downloadLecture(_DownloadLecture value),
    TResult uploadLecture(_UploadLecture value),
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
abstract class _$DownloadLectureCopyWith<$Res> {
  factory _$DownloadLectureCopyWith(
          _DownloadLecture value, $Res Function(_DownloadLecture) then) =
      __$DownloadLectureCopyWithImpl<$Res>;
  $Res call({String fileUrl});
}

/// @nodoc
class __$DownloadLectureCopyWithImpl<$Res>
    extends _$LectureEventCopyWithImpl<$Res>
    implements _$DownloadLectureCopyWith<$Res> {
  __$DownloadLectureCopyWithImpl(
      _DownloadLecture _value, $Res Function(_DownloadLecture) _then)
      : super(_value, (v) => _then(v as _DownloadLecture));

  @override
  _DownloadLecture get _value => super._value as _DownloadLecture;

  @override
  $Res call({
    Object fileUrl = freezed,
  }) {
    return _then(_DownloadLecture(
      fileUrl: fileUrl == freezed ? _value.fileUrl : fileUrl as String,
    ));
  }
}

/// @nodoc
class _$_DownloadLecture implements _DownloadLecture {
  const _$_DownloadLecture({@required this.fileUrl}) : assert(fileUrl != null);

  @override
  final String fileUrl;

  @override
  String toString() {
    return 'LectureEvent.downloadLecture(fileUrl: $fileUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DownloadLecture &&
            (identical(other.fileUrl, fileUrl) ||
                const DeepCollectionEquality().equals(other.fileUrl, fileUrl)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(fileUrl);

  @JsonKey(ignore: true)
  @override
  _$DownloadLectureCopyWith<_DownloadLecture> get copyWith =>
      __$DownloadLectureCopyWithImpl<_DownloadLecture>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(),
    @required TResult downloadLecture(String fileUrl),
    @required TResult uploadLecture(),
  }) {
    assert(started != null);
    assert(downloadLecture != null);
    assert(uploadLecture != null);
    return downloadLecture(fileUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult downloadLecture(String fileUrl),
    TResult uploadLecture(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (downloadLecture != null) {
      return downloadLecture(fileUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required TResult downloadLecture(_DownloadLecture value),
    @required TResult uploadLecture(_UploadLecture value),
  }) {
    assert(started != null);
    assert(downloadLecture != null);
    assert(uploadLecture != null);
    return downloadLecture(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult downloadLecture(_DownloadLecture value),
    TResult uploadLecture(_UploadLecture value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (downloadLecture != null) {
      return downloadLecture(this);
    }
    return orElse();
  }
}

abstract class _DownloadLecture implements LectureEvent {
  const factory _DownloadLecture({@required String fileUrl}) =
      _$_DownloadLecture;

  String get fileUrl;
  @JsonKey(ignore: true)
  _$DownloadLectureCopyWith<_DownloadLecture> get copyWith;
}

/// @nodoc
abstract class _$UploadLectureCopyWith<$Res> {
  factory _$UploadLectureCopyWith(
          _UploadLecture value, $Res Function(_UploadLecture) then) =
      __$UploadLectureCopyWithImpl<$Res>;
}

/// @nodoc
class __$UploadLectureCopyWithImpl<$Res>
    extends _$LectureEventCopyWithImpl<$Res>
    implements _$UploadLectureCopyWith<$Res> {
  __$UploadLectureCopyWithImpl(
      _UploadLecture _value, $Res Function(_UploadLecture) _then)
      : super(_value, (v) => _then(v as _UploadLecture));

  @override
  _UploadLecture get _value => super._value as _UploadLecture;
}

/// @nodoc
class _$_UploadLecture implements _UploadLecture {
  const _$_UploadLecture();

  @override
  String toString() {
    return 'LectureEvent.uploadLecture()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _UploadLecture);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(),
    @required TResult downloadLecture(String fileUrl),
    @required TResult uploadLecture(),
  }) {
    assert(started != null);
    assert(downloadLecture != null);
    assert(uploadLecture != null);
    return uploadLecture();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult downloadLecture(String fileUrl),
    TResult uploadLecture(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (uploadLecture != null) {
      return uploadLecture();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required TResult downloadLecture(_DownloadLecture value),
    @required TResult uploadLecture(_UploadLecture value),
  }) {
    assert(started != null);
    assert(downloadLecture != null);
    assert(uploadLecture != null);
    return uploadLecture(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult downloadLecture(_DownloadLecture value),
    TResult uploadLecture(_UploadLecture value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (uploadLecture != null) {
      return uploadLecture(this);
    }
    return orElse();
  }
}

abstract class _UploadLecture implements LectureEvent {
  const factory _UploadLecture() = _$_UploadLecture;
}

/// @nodoc
class _$LectureStateTearOff {
  const _$LectureStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _Loading loading() {
    return const _Loading();
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
    @required TResult loading(),
    @required TResult lectureLoaded(LectureEntity lectureEntity),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult lectureLoaded(LectureEntity lectureEntity),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult lectureLoaded(_LectureLoaded value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
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
    @required TResult loading(),
    @required TResult lectureLoaded(LectureEntity lectureEntity),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(lectureLoaded != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
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
    @required TResult loading(_Loading value),
    @required TResult lectureLoaded(_LectureLoaded value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(lectureLoaded != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
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
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$LectureStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

/// @nodoc
class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'LectureState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult lectureLoaded(LectureEntity lectureEntity),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(lectureLoaded != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult lectureLoaded(LectureEntity lectureEntity),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult lectureLoaded(_LectureLoaded value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(lectureLoaded != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult lectureLoaded(_LectureLoaded value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements LectureState {
  const factory _Loading() = _$_Loading;
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
    @required TResult loading(),
    @required TResult lectureLoaded(LectureEntity lectureEntity),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(lectureLoaded != null);
    return lectureLoaded(lectureEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
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
    @required TResult loading(_Loading value),
    @required TResult lectureLoaded(_LectureLoaded value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(lectureLoaded != null);
    return lectureLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
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
