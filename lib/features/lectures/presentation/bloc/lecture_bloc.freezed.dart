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
  _UploadLecture uploadLecture(
      {@required UserModel user,
      @required String title,
      @required String description}) {
    return _UploadLecture(
      user: user,
      title: title,
      description: description,
    );
  }

// ignore: unused_element
  _GetAllLectures getAllLectures() {
    return const _GetAllLectures();
  }

// ignore: unused_element
  _GetAllLecturesByUserId getAllLecturesByUserId({@required String userId}) {
    return _GetAllLecturesByUserId(
      userId: userId,
    );
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
    @required
        TResult uploadLecture(UserModel user, String title, String description),
    @required TResult getAllLectures(),
    @required TResult getAllLecturesByUserId(String userId),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult downloadLecture(String fileUrl),
    TResult uploadLecture(UserModel user, String title, String description),
    TResult getAllLectures(),
    TResult getAllLecturesByUserId(String userId),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required TResult downloadLecture(_DownloadLecture value),
    @required TResult uploadLecture(_UploadLecture value),
    @required TResult getAllLectures(_GetAllLectures value),
    @required TResult getAllLecturesByUserId(_GetAllLecturesByUserId value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult downloadLecture(_DownloadLecture value),
    TResult uploadLecture(_UploadLecture value),
    TResult getAllLectures(_GetAllLectures value),
    TResult getAllLecturesByUserId(_GetAllLecturesByUserId value),
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
    @required
        TResult uploadLecture(UserModel user, String title, String description),
    @required TResult getAllLectures(),
    @required TResult getAllLecturesByUserId(String userId),
  }) {
    assert(started != null);
    assert(downloadLecture != null);
    assert(uploadLecture != null);
    assert(getAllLectures != null);
    assert(getAllLecturesByUserId != null);
    return started();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult downloadLecture(String fileUrl),
    TResult uploadLecture(UserModel user, String title, String description),
    TResult getAllLectures(),
    TResult getAllLecturesByUserId(String userId),
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
    @required TResult getAllLectures(_GetAllLectures value),
    @required TResult getAllLecturesByUserId(_GetAllLecturesByUserId value),
  }) {
    assert(started != null);
    assert(downloadLecture != null);
    assert(uploadLecture != null);
    assert(getAllLectures != null);
    assert(getAllLecturesByUserId != null);
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult downloadLecture(_DownloadLecture value),
    TResult uploadLecture(_UploadLecture value),
    TResult getAllLectures(_GetAllLectures value),
    TResult getAllLecturesByUserId(_GetAllLecturesByUserId value),
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
    @required
        TResult uploadLecture(UserModel user, String title, String description),
    @required TResult getAllLectures(),
    @required TResult getAllLecturesByUserId(String userId),
  }) {
    assert(started != null);
    assert(downloadLecture != null);
    assert(uploadLecture != null);
    assert(getAllLectures != null);
    assert(getAllLecturesByUserId != null);
    return downloadLecture(fileUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult downloadLecture(String fileUrl),
    TResult uploadLecture(UserModel user, String title, String description),
    TResult getAllLectures(),
    TResult getAllLecturesByUserId(String userId),
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
    @required TResult getAllLectures(_GetAllLectures value),
    @required TResult getAllLecturesByUserId(_GetAllLecturesByUserId value),
  }) {
    assert(started != null);
    assert(downloadLecture != null);
    assert(uploadLecture != null);
    assert(getAllLectures != null);
    assert(getAllLecturesByUserId != null);
    return downloadLecture(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult downloadLecture(_DownloadLecture value),
    TResult uploadLecture(_UploadLecture value),
    TResult getAllLectures(_GetAllLectures value),
    TResult getAllLecturesByUserId(_GetAllLecturesByUserId value),
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
  $Res call({UserModel user, String title, String description});
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

  @override
  $Res call({
    Object user = freezed,
    Object title = freezed,
    Object description = freezed,
  }) {
    return _then(_UploadLecture(
      user: user == freezed ? _value.user : user as UserModel,
      title: title == freezed ? _value.title : title as String,
      description:
          description == freezed ? _value.description : description as String,
    ));
  }
}

/// @nodoc
class _$_UploadLecture implements _UploadLecture {
  const _$_UploadLecture(
      {@required this.user, @required this.title, @required this.description})
      : assert(user != null),
        assert(title != null),
        assert(description != null);

  @override
  final UserModel user;
  @override
  final String title;
  @override
  final String description;

  @override
  String toString() {
    return 'LectureEvent.uploadLecture(user: $user, title: $title, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UploadLecture &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(description);

  @JsonKey(ignore: true)
  @override
  _$UploadLectureCopyWith<_UploadLecture> get copyWith =>
      __$UploadLectureCopyWithImpl<_UploadLecture>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(),
    @required TResult downloadLecture(String fileUrl),
    @required
        TResult uploadLecture(UserModel user, String title, String description),
    @required TResult getAllLectures(),
    @required TResult getAllLecturesByUserId(String userId),
  }) {
    assert(started != null);
    assert(downloadLecture != null);
    assert(uploadLecture != null);
    assert(getAllLectures != null);
    assert(getAllLecturesByUserId != null);
    return uploadLecture(user, title, description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult downloadLecture(String fileUrl),
    TResult uploadLecture(UserModel user, String title, String description),
    TResult getAllLectures(),
    TResult getAllLecturesByUserId(String userId),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (uploadLecture != null) {
      return uploadLecture(user, title, description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required TResult downloadLecture(_DownloadLecture value),
    @required TResult uploadLecture(_UploadLecture value),
    @required TResult getAllLectures(_GetAllLectures value),
    @required TResult getAllLecturesByUserId(_GetAllLecturesByUserId value),
  }) {
    assert(started != null);
    assert(downloadLecture != null);
    assert(uploadLecture != null);
    assert(getAllLectures != null);
    assert(getAllLecturesByUserId != null);
    return uploadLecture(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult downloadLecture(_DownloadLecture value),
    TResult uploadLecture(_UploadLecture value),
    TResult getAllLectures(_GetAllLectures value),
    TResult getAllLecturesByUserId(_GetAllLecturesByUserId value),
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
  const factory _UploadLecture(
      {@required UserModel user,
      @required String title,
      @required String description}) = _$_UploadLecture;

  UserModel get user;
  String get title;
  String get description;
  @JsonKey(ignore: true)
  _$UploadLectureCopyWith<_UploadLecture> get copyWith;
}

/// @nodoc
abstract class _$GetAllLecturesCopyWith<$Res> {
  factory _$GetAllLecturesCopyWith(
          _GetAllLectures value, $Res Function(_GetAllLectures) then) =
      __$GetAllLecturesCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetAllLecturesCopyWithImpl<$Res>
    extends _$LectureEventCopyWithImpl<$Res>
    implements _$GetAllLecturesCopyWith<$Res> {
  __$GetAllLecturesCopyWithImpl(
      _GetAllLectures _value, $Res Function(_GetAllLectures) _then)
      : super(_value, (v) => _then(v as _GetAllLectures));

  @override
  _GetAllLectures get _value => super._value as _GetAllLectures;
}

/// @nodoc
class _$_GetAllLectures implements _GetAllLectures {
  const _$_GetAllLectures();

  @override
  String toString() {
    return 'LectureEvent.getAllLectures()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GetAllLectures);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(),
    @required TResult downloadLecture(String fileUrl),
    @required
        TResult uploadLecture(UserModel user, String title, String description),
    @required TResult getAllLectures(),
    @required TResult getAllLecturesByUserId(String userId),
  }) {
    assert(started != null);
    assert(downloadLecture != null);
    assert(uploadLecture != null);
    assert(getAllLectures != null);
    assert(getAllLecturesByUserId != null);
    return getAllLectures();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult downloadLecture(String fileUrl),
    TResult uploadLecture(UserModel user, String title, String description),
    TResult getAllLectures(),
    TResult getAllLecturesByUserId(String userId),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getAllLectures != null) {
      return getAllLectures();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required TResult downloadLecture(_DownloadLecture value),
    @required TResult uploadLecture(_UploadLecture value),
    @required TResult getAllLectures(_GetAllLectures value),
    @required TResult getAllLecturesByUserId(_GetAllLecturesByUserId value),
  }) {
    assert(started != null);
    assert(downloadLecture != null);
    assert(uploadLecture != null);
    assert(getAllLectures != null);
    assert(getAllLecturesByUserId != null);
    return getAllLectures(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult downloadLecture(_DownloadLecture value),
    TResult uploadLecture(_UploadLecture value),
    TResult getAllLectures(_GetAllLectures value),
    TResult getAllLecturesByUserId(_GetAllLecturesByUserId value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getAllLectures != null) {
      return getAllLectures(this);
    }
    return orElse();
  }
}

abstract class _GetAllLectures implements LectureEvent {
  const factory _GetAllLectures() = _$_GetAllLectures;
}

/// @nodoc
abstract class _$GetAllLecturesByUserIdCopyWith<$Res> {
  factory _$GetAllLecturesByUserIdCopyWith(_GetAllLecturesByUserId value,
          $Res Function(_GetAllLecturesByUserId) then) =
      __$GetAllLecturesByUserIdCopyWithImpl<$Res>;
  $Res call({String userId});
}

/// @nodoc
class __$GetAllLecturesByUserIdCopyWithImpl<$Res>
    extends _$LectureEventCopyWithImpl<$Res>
    implements _$GetAllLecturesByUserIdCopyWith<$Res> {
  __$GetAllLecturesByUserIdCopyWithImpl(_GetAllLecturesByUserId _value,
      $Res Function(_GetAllLecturesByUserId) _then)
      : super(_value, (v) => _then(v as _GetAllLecturesByUserId));

  @override
  _GetAllLecturesByUserId get _value => super._value as _GetAllLecturesByUserId;

  @override
  $Res call({
    Object userId = freezed,
  }) {
    return _then(_GetAllLecturesByUserId(
      userId: userId == freezed ? _value.userId : userId as String,
    ));
  }
}

/// @nodoc
class _$_GetAllLecturesByUserId implements _GetAllLecturesByUserId {
  const _$_GetAllLecturesByUserId({@required this.userId})
      : assert(userId != null);

  @override
  final String userId;

  @override
  String toString() {
    return 'LectureEvent.getAllLecturesByUserId(userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetAllLecturesByUserId &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(userId);

  @JsonKey(ignore: true)
  @override
  _$GetAllLecturesByUserIdCopyWith<_GetAllLecturesByUserId> get copyWith =>
      __$GetAllLecturesByUserIdCopyWithImpl<_GetAllLecturesByUserId>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(),
    @required TResult downloadLecture(String fileUrl),
    @required
        TResult uploadLecture(UserModel user, String title, String description),
    @required TResult getAllLectures(),
    @required TResult getAllLecturesByUserId(String userId),
  }) {
    assert(started != null);
    assert(downloadLecture != null);
    assert(uploadLecture != null);
    assert(getAllLectures != null);
    assert(getAllLecturesByUserId != null);
    return getAllLecturesByUserId(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult downloadLecture(String fileUrl),
    TResult uploadLecture(UserModel user, String title, String description),
    TResult getAllLectures(),
    TResult getAllLecturesByUserId(String userId),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getAllLecturesByUserId != null) {
      return getAllLecturesByUserId(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required TResult downloadLecture(_DownloadLecture value),
    @required TResult uploadLecture(_UploadLecture value),
    @required TResult getAllLectures(_GetAllLectures value),
    @required TResult getAllLecturesByUserId(_GetAllLecturesByUserId value),
  }) {
    assert(started != null);
    assert(downloadLecture != null);
    assert(uploadLecture != null);
    assert(getAllLectures != null);
    assert(getAllLecturesByUserId != null);
    return getAllLecturesByUserId(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult downloadLecture(_DownloadLecture value),
    TResult uploadLecture(_UploadLecture value),
    TResult getAllLectures(_GetAllLectures value),
    TResult getAllLecturesByUserId(_GetAllLecturesByUserId value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getAllLecturesByUserId != null) {
      return getAllLecturesByUserId(this);
    }
    return orElse();
  }
}

abstract class _GetAllLecturesByUserId implements LectureEvent {
  const factory _GetAllLecturesByUserId({@required String userId}) =
      _$_GetAllLecturesByUserId;

  String get userId;
  @JsonKey(ignore: true)
  _$GetAllLecturesByUserIdCopyWith<_GetAllLecturesByUserId> get copyWith;
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

// ignore: unused_element
  _AllLecturesLoaded allLecturesLoaded(
      {@required List<LectureEntity> lecturesEntities}) {
    return _AllLecturesLoaded(
      lecturesEntities: lecturesEntities,
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
    @required TResult allLecturesLoaded(List<LectureEntity> lecturesEntities),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult lectureLoaded(LectureEntity lectureEntity),
    TResult allLecturesLoaded(List<LectureEntity> lecturesEntities),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult lectureLoaded(_LectureLoaded value),
    @required TResult allLecturesLoaded(_AllLecturesLoaded value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult lectureLoaded(_LectureLoaded value),
    TResult allLecturesLoaded(_AllLecturesLoaded value),
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
    @required TResult allLecturesLoaded(List<LectureEntity> lecturesEntities),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(lectureLoaded != null);
    assert(allLecturesLoaded != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult lectureLoaded(LectureEntity lectureEntity),
    TResult allLecturesLoaded(List<LectureEntity> lecturesEntities),
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
    @required TResult allLecturesLoaded(_AllLecturesLoaded value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(lectureLoaded != null);
    assert(allLecturesLoaded != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult lectureLoaded(_LectureLoaded value),
    TResult allLecturesLoaded(_AllLecturesLoaded value),
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
    @required TResult allLecturesLoaded(List<LectureEntity> lecturesEntities),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(lectureLoaded != null);
    assert(allLecturesLoaded != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult lectureLoaded(LectureEntity lectureEntity),
    TResult allLecturesLoaded(List<LectureEntity> lecturesEntities),
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
    @required TResult allLecturesLoaded(_AllLecturesLoaded value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(lectureLoaded != null);
    assert(allLecturesLoaded != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult lectureLoaded(_LectureLoaded value),
    TResult allLecturesLoaded(_AllLecturesLoaded value),
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
    @required TResult allLecturesLoaded(List<LectureEntity> lecturesEntities),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(lectureLoaded != null);
    assert(allLecturesLoaded != null);
    return lectureLoaded(lectureEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult lectureLoaded(LectureEntity lectureEntity),
    TResult allLecturesLoaded(List<LectureEntity> lecturesEntities),
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
    @required TResult allLecturesLoaded(_AllLecturesLoaded value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(lectureLoaded != null);
    assert(allLecturesLoaded != null);
    return lectureLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult lectureLoaded(_LectureLoaded value),
    TResult allLecturesLoaded(_AllLecturesLoaded value),
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

/// @nodoc
abstract class _$AllLecturesLoadedCopyWith<$Res> {
  factory _$AllLecturesLoadedCopyWith(
          _AllLecturesLoaded value, $Res Function(_AllLecturesLoaded) then) =
      __$AllLecturesLoadedCopyWithImpl<$Res>;
  $Res call({List<LectureEntity> lecturesEntities});
}

/// @nodoc
class __$AllLecturesLoadedCopyWithImpl<$Res>
    extends _$LectureStateCopyWithImpl<$Res>
    implements _$AllLecturesLoadedCopyWith<$Res> {
  __$AllLecturesLoadedCopyWithImpl(
      _AllLecturesLoaded _value, $Res Function(_AllLecturesLoaded) _then)
      : super(_value, (v) => _then(v as _AllLecturesLoaded));

  @override
  _AllLecturesLoaded get _value => super._value as _AllLecturesLoaded;

  @override
  $Res call({
    Object lecturesEntities = freezed,
  }) {
    return _then(_AllLecturesLoaded(
      lecturesEntities: lecturesEntities == freezed
          ? _value.lecturesEntities
          : lecturesEntities as List<LectureEntity>,
    ));
  }
}

/// @nodoc
class _$_AllLecturesLoaded implements _AllLecturesLoaded {
  const _$_AllLecturesLoaded({@required this.lecturesEntities})
      : assert(lecturesEntities != null);

  @override
  final List<LectureEntity> lecturesEntities;

  @override
  String toString() {
    return 'LectureState.allLecturesLoaded(lecturesEntities: $lecturesEntities)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AllLecturesLoaded &&
            (identical(other.lecturesEntities, lecturesEntities) ||
                const DeepCollectionEquality()
                    .equals(other.lecturesEntities, lecturesEntities)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(lecturesEntities);

  @JsonKey(ignore: true)
  @override
  _$AllLecturesLoadedCopyWith<_AllLecturesLoaded> get copyWith =>
      __$AllLecturesLoadedCopyWithImpl<_AllLecturesLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult lectureLoaded(LectureEntity lectureEntity),
    @required TResult allLecturesLoaded(List<LectureEntity> lecturesEntities),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(lectureLoaded != null);
    assert(allLecturesLoaded != null);
    return allLecturesLoaded(lecturesEntities);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult lectureLoaded(LectureEntity lectureEntity),
    TResult allLecturesLoaded(List<LectureEntity> lecturesEntities),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (allLecturesLoaded != null) {
      return allLecturesLoaded(lecturesEntities);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult lectureLoaded(_LectureLoaded value),
    @required TResult allLecturesLoaded(_AllLecturesLoaded value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(lectureLoaded != null);
    assert(allLecturesLoaded != null);
    return allLecturesLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult lectureLoaded(_LectureLoaded value),
    TResult allLecturesLoaded(_AllLecturesLoaded value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (allLecturesLoaded != null) {
      return allLecturesLoaded(this);
    }
    return orElse();
  }
}

abstract class _AllLecturesLoaded implements LectureState {
  const factory _AllLecturesLoaded(
      {@required List<LectureEntity> lecturesEntities}) = _$_AllLecturesLoaded;

  List<LectureEntity> get lecturesEntities;
  @JsonKey(ignore: true)
  _$AllLecturesLoadedCopyWith<_AllLecturesLoaded> get copyWith;
}
