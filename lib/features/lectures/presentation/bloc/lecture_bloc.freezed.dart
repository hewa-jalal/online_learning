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
  _SelectFile selectFile() {
    return const _SelectFile();
  }

// ignore: unused_element
  _DownloadLecture downloadLecture(
      {@required String fileUrl,
      @required String courseTitle,
      @required String lectureTitle}) {
    return _DownloadLecture(
      fileUrl: fileUrl,
      courseTitle: courseTitle,
      lectureTitle: lectureTitle,
    );
  }

// ignore: unused_element
  _UploadLecture uploadLecture(
      {@required UserModel user,
      @required String title,
      @required String courseTitle,
      @required String filePath,
      String description}) {
    return _UploadLecture(
      user: user,
      title: title,
      courseTitle: courseTitle,
      filePath: filePath,
      description: description,
    );
  }

// ignore: unused_element
  _GetAllLectures getAllLectures() {
    return const _GetAllLectures();
  }

// ignore: unused_element
  _GetAllLecturesByCourse getAllLecturesByCourse(
      {@required String courseTitle}) {
    return _GetAllLecturesByCourse(
      courseTitle: courseTitle,
    );
  }

// ignore: unused_element
  _GetAllCoursesByUserId getAllCoursesByUserId() {
    return const _GetAllCoursesByUserId();
  }

// ignore: unused_element
  _CreateCourse createCourse({@required String courseTitle}) {
    return _CreateCourse(
      courseTitle: courseTitle,
    );
  }

// ignore: unused_element
  _SubmitUser submitUser(
      {@required String userId,
      @required String courseTitle,
      @required String lectureTitle}) {
    return _SubmitUser(
      userId: userId,
      courseTitle: courseTitle,
      lectureTitle: lectureTitle,
    );
  }

// ignore: unused_element
  _GetAllSubmittedUsers getAllSubmittedUsers(
      {@required String userId,
      @required String courseTitle,
      @required String lectureTitle}) {
    return _GetAllSubmittedUsers(
      userId: userId,
      courseTitle: courseTitle,
      lectureTitle: lectureTitle,
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
    @required TResult selectFile(),
    @required
        TResult downloadLecture(
            String fileUrl, String courseTitle, String lectureTitle),
    @required
        TResult uploadLecture(UserModel user, String title, String courseTitle,
            String filePath, String description),
    @required TResult getAllLectures(),
    @required TResult getAllLecturesByCourse(String courseTitle),
    @required TResult getAllCoursesByUserId(),
    @required TResult createCourse(String courseTitle),
    @required
        TResult submitUser(
            String userId, String courseTitle, String lectureTitle),
    @required
        TResult getAllSubmittedUsers(
            String userId, String courseTitle, String lectureTitle),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult selectFile(),
    TResult downloadLecture(
        String fileUrl, String courseTitle, String lectureTitle),
    TResult uploadLecture(UserModel user, String title, String courseTitle,
        String filePath, String description),
    TResult getAllLectures(),
    TResult getAllLecturesByCourse(String courseTitle),
    TResult getAllCoursesByUserId(),
    TResult createCourse(String courseTitle),
    TResult submitUser(String userId, String courseTitle, String lectureTitle),
    TResult getAllSubmittedUsers(
        String userId, String courseTitle, String lectureTitle),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required TResult selectFile(_SelectFile value),
    @required TResult downloadLecture(_DownloadLecture value),
    @required TResult uploadLecture(_UploadLecture value),
    @required TResult getAllLectures(_GetAllLectures value),
    @required TResult getAllLecturesByCourse(_GetAllLecturesByCourse value),
    @required TResult getAllCoursesByUserId(_GetAllCoursesByUserId value),
    @required TResult createCourse(_CreateCourse value),
    @required TResult submitUser(_SubmitUser value),
    @required TResult getAllSubmittedUsers(_GetAllSubmittedUsers value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult selectFile(_SelectFile value),
    TResult downloadLecture(_DownloadLecture value),
    TResult uploadLecture(_UploadLecture value),
    TResult getAllLectures(_GetAllLectures value),
    TResult getAllLecturesByCourse(_GetAllLecturesByCourse value),
    TResult getAllCoursesByUserId(_GetAllCoursesByUserId value),
    TResult createCourse(_CreateCourse value),
    TResult submitUser(_SubmitUser value),
    TResult getAllSubmittedUsers(_GetAllSubmittedUsers value),
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
    @required TResult selectFile(),
    @required
        TResult downloadLecture(
            String fileUrl, String courseTitle, String lectureTitle),
    @required
        TResult uploadLecture(UserModel user, String title, String courseTitle,
            String filePath, String description),
    @required TResult getAllLectures(),
    @required TResult getAllLecturesByCourse(String courseTitle),
    @required TResult getAllCoursesByUserId(),
    @required TResult createCourse(String courseTitle),
    @required
        TResult submitUser(
            String userId, String courseTitle, String lectureTitle),
    @required
        TResult getAllSubmittedUsers(
            String userId, String courseTitle, String lectureTitle),
  }) {
    assert(started != null);
    assert(selectFile != null);
    assert(downloadLecture != null);
    assert(uploadLecture != null);
    assert(getAllLectures != null);
    assert(getAllLecturesByCourse != null);
    assert(getAllCoursesByUserId != null);
    assert(createCourse != null);
    assert(submitUser != null);
    assert(getAllSubmittedUsers != null);
    return started();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult selectFile(),
    TResult downloadLecture(
        String fileUrl, String courseTitle, String lectureTitle),
    TResult uploadLecture(UserModel user, String title, String courseTitle,
        String filePath, String description),
    TResult getAllLectures(),
    TResult getAllLecturesByCourse(String courseTitle),
    TResult getAllCoursesByUserId(),
    TResult createCourse(String courseTitle),
    TResult submitUser(String userId, String courseTitle, String lectureTitle),
    TResult getAllSubmittedUsers(
        String userId, String courseTitle, String lectureTitle),
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
    @required TResult selectFile(_SelectFile value),
    @required TResult downloadLecture(_DownloadLecture value),
    @required TResult uploadLecture(_UploadLecture value),
    @required TResult getAllLectures(_GetAllLectures value),
    @required TResult getAllLecturesByCourse(_GetAllLecturesByCourse value),
    @required TResult getAllCoursesByUserId(_GetAllCoursesByUserId value),
    @required TResult createCourse(_CreateCourse value),
    @required TResult submitUser(_SubmitUser value),
    @required TResult getAllSubmittedUsers(_GetAllSubmittedUsers value),
  }) {
    assert(started != null);
    assert(selectFile != null);
    assert(downloadLecture != null);
    assert(uploadLecture != null);
    assert(getAllLectures != null);
    assert(getAllLecturesByCourse != null);
    assert(getAllCoursesByUserId != null);
    assert(createCourse != null);
    assert(submitUser != null);
    assert(getAllSubmittedUsers != null);
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult selectFile(_SelectFile value),
    TResult downloadLecture(_DownloadLecture value),
    TResult uploadLecture(_UploadLecture value),
    TResult getAllLectures(_GetAllLectures value),
    TResult getAllLecturesByCourse(_GetAllLecturesByCourse value),
    TResult getAllCoursesByUserId(_GetAllCoursesByUserId value),
    TResult createCourse(_CreateCourse value),
    TResult submitUser(_SubmitUser value),
    TResult getAllSubmittedUsers(_GetAllSubmittedUsers value),
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
abstract class _$SelectFileCopyWith<$Res> {
  factory _$SelectFileCopyWith(
          _SelectFile value, $Res Function(_SelectFile) then) =
      __$SelectFileCopyWithImpl<$Res>;
}

/// @nodoc
class __$SelectFileCopyWithImpl<$Res> extends _$LectureEventCopyWithImpl<$Res>
    implements _$SelectFileCopyWith<$Res> {
  __$SelectFileCopyWithImpl(
      _SelectFile _value, $Res Function(_SelectFile) _then)
      : super(_value, (v) => _then(v as _SelectFile));

  @override
  _SelectFile get _value => super._value as _SelectFile;
}

/// @nodoc
class _$_SelectFile implements _SelectFile {
  const _$_SelectFile();

  @override
  String toString() {
    return 'LectureEvent.selectFile()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SelectFile);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(),
    @required TResult selectFile(),
    @required
        TResult downloadLecture(
            String fileUrl, String courseTitle, String lectureTitle),
    @required
        TResult uploadLecture(UserModel user, String title, String courseTitle,
            String filePath, String description),
    @required TResult getAllLectures(),
    @required TResult getAllLecturesByCourse(String courseTitle),
    @required TResult getAllCoursesByUserId(),
    @required TResult createCourse(String courseTitle),
    @required
        TResult submitUser(
            String userId, String courseTitle, String lectureTitle),
    @required
        TResult getAllSubmittedUsers(
            String userId, String courseTitle, String lectureTitle),
  }) {
    assert(started != null);
    assert(selectFile != null);
    assert(downloadLecture != null);
    assert(uploadLecture != null);
    assert(getAllLectures != null);
    assert(getAllLecturesByCourse != null);
    assert(getAllCoursesByUserId != null);
    assert(createCourse != null);
    assert(submitUser != null);
    assert(getAllSubmittedUsers != null);
    return selectFile();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult selectFile(),
    TResult downloadLecture(
        String fileUrl, String courseTitle, String lectureTitle),
    TResult uploadLecture(UserModel user, String title, String courseTitle,
        String filePath, String description),
    TResult getAllLectures(),
    TResult getAllLecturesByCourse(String courseTitle),
    TResult getAllCoursesByUserId(),
    TResult createCourse(String courseTitle),
    TResult submitUser(String userId, String courseTitle, String lectureTitle),
    TResult getAllSubmittedUsers(
        String userId, String courseTitle, String lectureTitle),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (selectFile != null) {
      return selectFile();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required TResult selectFile(_SelectFile value),
    @required TResult downloadLecture(_DownloadLecture value),
    @required TResult uploadLecture(_UploadLecture value),
    @required TResult getAllLectures(_GetAllLectures value),
    @required TResult getAllLecturesByCourse(_GetAllLecturesByCourse value),
    @required TResult getAllCoursesByUserId(_GetAllCoursesByUserId value),
    @required TResult createCourse(_CreateCourse value),
    @required TResult submitUser(_SubmitUser value),
    @required TResult getAllSubmittedUsers(_GetAllSubmittedUsers value),
  }) {
    assert(started != null);
    assert(selectFile != null);
    assert(downloadLecture != null);
    assert(uploadLecture != null);
    assert(getAllLectures != null);
    assert(getAllLecturesByCourse != null);
    assert(getAllCoursesByUserId != null);
    assert(createCourse != null);
    assert(submitUser != null);
    assert(getAllSubmittedUsers != null);
    return selectFile(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult selectFile(_SelectFile value),
    TResult downloadLecture(_DownloadLecture value),
    TResult uploadLecture(_UploadLecture value),
    TResult getAllLectures(_GetAllLectures value),
    TResult getAllLecturesByCourse(_GetAllLecturesByCourse value),
    TResult getAllCoursesByUserId(_GetAllCoursesByUserId value),
    TResult createCourse(_CreateCourse value),
    TResult submitUser(_SubmitUser value),
    TResult getAllSubmittedUsers(_GetAllSubmittedUsers value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (selectFile != null) {
      return selectFile(this);
    }
    return orElse();
  }
}

abstract class _SelectFile implements LectureEvent {
  const factory _SelectFile() = _$_SelectFile;
}

/// @nodoc
abstract class _$DownloadLectureCopyWith<$Res> {
  factory _$DownloadLectureCopyWith(
          _DownloadLecture value, $Res Function(_DownloadLecture) then) =
      __$DownloadLectureCopyWithImpl<$Res>;
  $Res call({String fileUrl, String courseTitle, String lectureTitle});
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
    Object courseTitle = freezed,
    Object lectureTitle = freezed,
  }) {
    return _then(_DownloadLecture(
      fileUrl: fileUrl == freezed ? _value.fileUrl : fileUrl as String,
      courseTitle:
          courseTitle == freezed ? _value.courseTitle : courseTitle as String,
      lectureTitle: lectureTitle == freezed
          ? _value.lectureTitle
          : lectureTitle as String,
    ));
  }
}

/// @nodoc
class _$_DownloadLecture implements _DownloadLecture {
  const _$_DownloadLecture(
      {@required this.fileUrl,
      @required this.courseTitle,
      @required this.lectureTitle})
      : assert(fileUrl != null),
        assert(courseTitle != null),
        assert(lectureTitle != null);

  @override
  final String fileUrl;
  @override
  final String courseTitle;
  @override
  final String lectureTitle;

  @override
  String toString() {
    return 'LectureEvent.downloadLecture(fileUrl: $fileUrl, courseTitle: $courseTitle, lectureTitle: $lectureTitle)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DownloadLecture &&
            (identical(other.fileUrl, fileUrl) ||
                const DeepCollectionEquality()
                    .equals(other.fileUrl, fileUrl)) &&
            (identical(other.courseTitle, courseTitle) ||
                const DeepCollectionEquality()
                    .equals(other.courseTitle, courseTitle)) &&
            (identical(other.lectureTitle, lectureTitle) ||
                const DeepCollectionEquality()
                    .equals(other.lectureTitle, lectureTitle)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(fileUrl) ^
      const DeepCollectionEquality().hash(courseTitle) ^
      const DeepCollectionEquality().hash(lectureTitle);

  @JsonKey(ignore: true)
  @override
  _$DownloadLectureCopyWith<_DownloadLecture> get copyWith =>
      __$DownloadLectureCopyWithImpl<_DownloadLecture>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(),
    @required TResult selectFile(),
    @required
        TResult downloadLecture(
            String fileUrl, String courseTitle, String lectureTitle),
    @required
        TResult uploadLecture(UserModel user, String title, String courseTitle,
            String filePath, String description),
    @required TResult getAllLectures(),
    @required TResult getAllLecturesByCourse(String courseTitle),
    @required TResult getAllCoursesByUserId(),
    @required TResult createCourse(String courseTitle),
    @required
        TResult submitUser(
            String userId, String courseTitle, String lectureTitle),
    @required
        TResult getAllSubmittedUsers(
            String userId, String courseTitle, String lectureTitle),
  }) {
    assert(started != null);
    assert(selectFile != null);
    assert(downloadLecture != null);
    assert(uploadLecture != null);
    assert(getAllLectures != null);
    assert(getAllLecturesByCourse != null);
    assert(getAllCoursesByUserId != null);
    assert(createCourse != null);
    assert(submitUser != null);
    assert(getAllSubmittedUsers != null);
    return downloadLecture(fileUrl, courseTitle, lectureTitle);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult selectFile(),
    TResult downloadLecture(
        String fileUrl, String courseTitle, String lectureTitle),
    TResult uploadLecture(UserModel user, String title, String courseTitle,
        String filePath, String description),
    TResult getAllLectures(),
    TResult getAllLecturesByCourse(String courseTitle),
    TResult getAllCoursesByUserId(),
    TResult createCourse(String courseTitle),
    TResult submitUser(String userId, String courseTitle, String lectureTitle),
    TResult getAllSubmittedUsers(
        String userId, String courseTitle, String lectureTitle),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (downloadLecture != null) {
      return downloadLecture(fileUrl, courseTitle, lectureTitle);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required TResult selectFile(_SelectFile value),
    @required TResult downloadLecture(_DownloadLecture value),
    @required TResult uploadLecture(_UploadLecture value),
    @required TResult getAllLectures(_GetAllLectures value),
    @required TResult getAllLecturesByCourse(_GetAllLecturesByCourse value),
    @required TResult getAllCoursesByUserId(_GetAllCoursesByUserId value),
    @required TResult createCourse(_CreateCourse value),
    @required TResult submitUser(_SubmitUser value),
    @required TResult getAllSubmittedUsers(_GetAllSubmittedUsers value),
  }) {
    assert(started != null);
    assert(selectFile != null);
    assert(downloadLecture != null);
    assert(uploadLecture != null);
    assert(getAllLectures != null);
    assert(getAllLecturesByCourse != null);
    assert(getAllCoursesByUserId != null);
    assert(createCourse != null);
    assert(submitUser != null);
    assert(getAllSubmittedUsers != null);
    return downloadLecture(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult selectFile(_SelectFile value),
    TResult downloadLecture(_DownloadLecture value),
    TResult uploadLecture(_UploadLecture value),
    TResult getAllLectures(_GetAllLectures value),
    TResult getAllLecturesByCourse(_GetAllLecturesByCourse value),
    TResult getAllCoursesByUserId(_GetAllCoursesByUserId value),
    TResult createCourse(_CreateCourse value),
    TResult submitUser(_SubmitUser value),
    TResult getAllSubmittedUsers(_GetAllSubmittedUsers value),
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
  const factory _DownloadLecture(
      {@required String fileUrl,
      @required String courseTitle,
      @required String lectureTitle}) = _$_DownloadLecture;

  String get fileUrl;
  String get courseTitle;
  String get lectureTitle;
  @JsonKey(ignore: true)
  _$DownloadLectureCopyWith<_DownloadLecture> get copyWith;
}

/// @nodoc
abstract class _$UploadLectureCopyWith<$Res> {
  factory _$UploadLectureCopyWith(
          _UploadLecture value, $Res Function(_UploadLecture) then) =
      __$UploadLectureCopyWithImpl<$Res>;
  $Res call(
      {UserModel user,
      String title,
      String courseTitle,
      String filePath,
      String description});
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
    Object courseTitle = freezed,
    Object filePath = freezed,
    Object description = freezed,
  }) {
    return _then(_UploadLecture(
      user: user == freezed ? _value.user : user as UserModel,
      title: title == freezed ? _value.title : title as String,
      courseTitle:
          courseTitle == freezed ? _value.courseTitle : courseTitle as String,
      filePath: filePath == freezed ? _value.filePath : filePath as String,
      description:
          description == freezed ? _value.description : description as String,
    ));
  }
}

/// @nodoc
class _$_UploadLecture implements _UploadLecture {
  const _$_UploadLecture(
      {@required this.user,
      @required this.title,
      @required this.courseTitle,
      @required this.filePath,
      this.description})
      : assert(user != null),
        assert(title != null),
        assert(courseTitle != null),
        assert(filePath != null);

  @override
  final UserModel user;
  @override
  final String title;
  @override
  final String courseTitle;
  @override
  final String filePath;
  @override
  final String description;

  @override
  String toString() {
    return 'LectureEvent.uploadLecture(user: $user, title: $title, courseTitle: $courseTitle, filePath: $filePath, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UploadLecture &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.courseTitle, courseTitle) ||
                const DeepCollectionEquality()
                    .equals(other.courseTitle, courseTitle)) &&
            (identical(other.filePath, filePath) ||
                const DeepCollectionEquality()
                    .equals(other.filePath, filePath)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(courseTitle) ^
      const DeepCollectionEquality().hash(filePath) ^
      const DeepCollectionEquality().hash(description);

  @JsonKey(ignore: true)
  @override
  _$UploadLectureCopyWith<_UploadLecture> get copyWith =>
      __$UploadLectureCopyWithImpl<_UploadLecture>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(),
    @required TResult selectFile(),
    @required
        TResult downloadLecture(
            String fileUrl, String courseTitle, String lectureTitle),
    @required
        TResult uploadLecture(UserModel user, String title, String courseTitle,
            String filePath, String description),
    @required TResult getAllLectures(),
    @required TResult getAllLecturesByCourse(String courseTitle),
    @required TResult getAllCoursesByUserId(),
    @required TResult createCourse(String courseTitle),
    @required
        TResult submitUser(
            String userId, String courseTitle, String lectureTitle),
    @required
        TResult getAllSubmittedUsers(
            String userId, String courseTitle, String lectureTitle),
  }) {
    assert(started != null);
    assert(selectFile != null);
    assert(downloadLecture != null);
    assert(uploadLecture != null);
    assert(getAllLectures != null);
    assert(getAllLecturesByCourse != null);
    assert(getAllCoursesByUserId != null);
    assert(createCourse != null);
    assert(submitUser != null);
    assert(getAllSubmittedUsers != null);
    return uploadLecture(user, title, courseTitle, filePath, description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult selectFile(),
    TResult downloadLecture(
        String fileUrl, String courseTitle, String lectureTitle),
    TResult uploadLecture(UserModel user, String title, String courseTitle,
        String filePath, String description),
    TResult getAllLectures(),
    TResult getAllLecturesByCourse(String courseTitle),
    TResult getAllCoursesByUserId(),
    TResult createCourse(String courseTitle),
    TResult submitUser(String userId, String courseTitle, String lectureTitle),
    TResult getAllSubmittedUsers(
        String userId, String courseTitle, String lectureTitle),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (uploadLecture != null) {
      return uploadLecture(user, title, courseTitle, filePath, description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required TResult selectFile(_SelectFile value),
    @required TResult downloadLecture(_DownloadLecture value),
    @required TResult uploadLecture(_UploadLecture value),
    @required TResult getAllLectures(_GetAllLectures value),
    @required TResult getAllLecturesByCourse(_GetAllLecturesByCourse value),
    @required TResult getAllCoursesByUserId(_GetAllCoursesByUserId value),
    @required TResult createCourse(_CreateCourse value),
    @required TResult submitUser(_SubmitUser value),
    @required TResult getAllSubmittedUsers(_GetAllSubmittedUsers value),
  }) {
    assert(started != null);
    assert(selectFile != null);
    assert(downloadLecture != null);
    assert(uploadLecture != null);
    assert(getAllLectures != null);
    assert(getAllLecturesByCourse != null);
    assert(getAllCoursesByUserId != null);
    assert(createCourse != null);
    assert(submitUser != null);
    assert(getAllSubmittedUsers != null);
    return uploadLecture(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult selectFile(_SelectFile value),
    TResult downloadLecture(_DownloadLecture value),
    TResult uploadLecture(_UploadLecture value),
    TResult getAllLectures(_GetAllLectures value),
    TResult getAllLecturesByCourse(_GetAllLecturesByCourse value),
    TResult getAllCoursesByUserId(_GetAllCoursesByUserId value),
    TResult createCourse(_CreateCourse value),
    TResult submitUser(_SubmitUser value),
    TResult getAllSubmittedUsers(_GetAllSubmittedUsers value),
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
      @required String courseTitle,
      @required String filePath,
      String description}) = _$_UploadLecture;

  UserModel get user;
  String get title;
  String get courseTitle;
  String get filePath;
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
    @required TResult selectFile(),
    @required
        TResult downloadLecture(
            String fileUrl, String courseTitle, String lectureTitle),
    @required
        TResult uploadLecture(UserModel user, String title, String courseTitle,
            String filePath, String description),
    @required TResult getAllLectures(),
    @required TResult getAllLecturesByCourse(String courseTitle),
    @required TResult getAllCoursesByUserId(),
    @required TResult createCourse(String courseTitle),
    @required
        TResult submitUser(
            String userId, String courseTitle, String lectureTitle),
    @required
        TResult getAllSubmittedUsers(
            String userId, String courseTitle, String lectureTitle),
  }) {
    assert(started != null);
    assert(selectFile != null);
    assert(downloadLecture != null);
    assert(uploadLecture != null);
    assert(getAllLectures != null);
    assert(getAllLecturesByCourse != null);
    assert(getAllCoursesByUserId != null);
    assert(createCourse != null);
    assert(submitUser != null);
    assert(getAllSubmittedUsers != null);
    return getAllLectures();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult selectFile(),
    TResult downloadLecture(
        String fileUrl, String courseTitle, String lectureTitle),
    TResult uploadLecture(UserModel user, String title, String courseTitle,
        String filePath, String description),
    TResult getAllLectures(),
    TResult getAllLecturesByCourse(String courseTitle),
    TResult getAllCoursesByUserId(),
    TResult createCourse(String courseTitle),
    TResult submitUser(String userId, String courseTitle, String lectureTitle),
    TResult getAllSubmittedUsers(
        String userId, String courseTitle, String lectureTitle),
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
    @required TResult selectFile(_SelectFile value),
    @required TResult downloadLecture(_DownloadLecture value),
    @required TResult uploadLecture(_UploadLecture value),
    @required TResult getAllLectures(_GetAllLectures value),
    @required TResult getAllLecturesByCourse(_GetAllLecturesByCourse value),
    @required TResult getAllCoursesByUserId(_GetAllCoursesByUserId value),
    @required TResult createCourse(_CreateCourse value),
    @required TResult submitUser(_SubmitUser value),
    @required TResult getAllSubmittedUsers(_GetAllSubmittedUsers value),
  }) {
    assert(started != null);
    assert(selectFile != null);
    assert(downloadLecture != null);
    assert(uploadLecture != null);
    assert(getAllLectures != null);
    assert(getAllLecturesByCourse != null);
    assert(getAllCoursesByUserId != null);
    assert(createCourse != null);
    assert(submitUser != null);
    assert(getAllSubmittedUsers != null);
    return getAllLectures(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult selectFile(_SelectFile value),
    TResult downloadLecture(_DownloadLecture value),
    TResult uploadLecture(_UploadLecture value),
    TResult getAllLectures(_GetAllLectures value),
    TResult getAllLecturesByCourse(_GetAllLecturesByCourse value),
    TResult getAllCoursesByUserId(_GetAllCoursesByUserId value),
    TResult createCourse(_CreateCourse value),
    TResult submitUser(_SubmitUser value),
    TResult getAllSubmittedUsers(_GetAllSubmittedUsers value),
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
abstract class _$GetAllLecturesByCourseCopyWith<$Res> {
  factory _$GetAllLecturesByCourseCopyWith(_GetAllLecturesByCourse value,
          $Res Function(_GetAllLecturesByCourse) then) =
      __$GetAllLecturesByCourseCopyWithImpl<$Res>;
  $Res call({String courseTitle});
}

/// @nodoc
class __$GetAllLecturesByCourseCopyWithImpl<$Res>
    extends _$LectureEventCopyWithImpl<$Res>
    implements _$GetAllLecturesByCourseCopyWith<$Res> {
  __$GetAllLecturesByCourseCopyWithImpl(_GetAllLecturesByCourse _value,
      $Res Function(_GetAllLecturesByCourse) _then)
      : super(_value, (v) => _then(v as _GetAllLecturesByCourse));

  @override
  _GetAllLecturesByCourse get _value => super._value as _GetAllLecturesByCourse;

  @override
  $Res call({
    Object courseTitle = freezed,
  }) {
    return _then(_GetAllLecturesByCourse(
      courseTitle:
          courseTitle == freezed ? _value.courseTitle : courseTitle as String,
    ));
  }
}

/// @nodoc
class _$_GetAllLecturesByCourse implements _GetAllLecturesByCourse {
  const _$_GetAllLecturesByCourse({@required this.courseTitle})
      : assert(courseTitle != null);

  @override
  final String courseTitle;

  @override
  String toString() {
    return 'LectureEvent.getAllLecturesByCourse(courseTitle: $courseTitle)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetAllLecturesByCourse &&
            (identical(other.courseTitle, courseTitle) ||
                const DeepCollectionEquality()
                    .equals(other.courseTitle, courseTitle)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(courseTitle);

  @JsonKey(ignore: true)
  @override
  _$GetAllLecturesByCourseCopyWith<_GetAllLecturesByCourse> get copyWith =>
      __$GetAllLecturesByCourseCopyWithImpl<_GetAllLecturesByCourse>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(),
    @required TResult selectFile(),
    @required
        TResult downloadLecture(
            String fileUrl, String courseTitle, String lectureTitle),
    @required
        TResult uploadLecture(UserModel user, String title, String courseTitle,
            String filePath, String description),
    @required TResult getAllLectures(),
    @required TResult getAllLecturesByCourse(String courseTitle),
    @required TResult getAllCoursesByUserId(),
    @required TResult createCourse(String courseTitle),
    @required
        TResult submitUser(
            String userId, String courseTitle, String lectureTitle),
    @required
        TResult getAllSubmittedUsers(
            String userId, String courseTitle, String lectureTitle),
  }) {
    assert(started != null);
    assert(selectFile != null);
    assert(downloadLecture != null);
    assert(uploadLecture != null);
    assert(getAllLectures != null);
    assert(getAllLecturesByCourse != null);
    assert(getAllCoursesByUserId != null);
    assert(createCourse != null);
    assert(submitUser != null);
    assert(getAllSubmittedUsers != null);
    return getAllLecturesByCourse(courseTitle);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult selectFile(),
    TResult downloadLecture(
        String fileUrl, String courseTitle, String lectureTitle),
    TResult uploadLecture(UserModel user, String title, String courseTitle,
        String filePath, String description),
    TResult getAllLectures(),
    TResult getAllLecturesByCourse(String courseTitle),
    TResult getAllCoursesByUserId(),
    TResult createCourse(String courseTitle),
    TResult submitUser(String userId, String courseTitle, String lectureTitle),
    TResult getAllSubmittedUsers(
        String userId, String courseTitle, String lectureTitle),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getAllLecturesByCourse != null) {
      return getAllLecturesByCourse(courseTitle);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required TResult selectFile(_SelectFile value),
    @required TResult downloadLecture(_DownloadLecture value),
    @required TResult uploadLecture(_UploadLecture value),
    @required TResult getAllLectures(_GetAllLectures value),
    @required TResult getAllLecturesByCourse(_GetAllLecturesByCourse value),
    @required TResult getAllCoursesByUserId(_GetAllCoursesByUserId value),
    @required TResult createCourse(_CreateCourse value),
    @required TResult submitUser(_SubmitUser value),
    @required TResult getAllSubmittedUsers(_GetAllSubmittedUsers value),
  }) {
    assert(started != null);
    assert(selectFile != null);
    assert(downloadLecture != null);
    assert(uploadLecture != null);
    assert(getAllLectures != null);
    assert(getAllLecturesByCourse != null);
    assert(getAllCoursesByUserId != null);
    assert(createCourse != null);
    assert(submitUser != null);
    assert(getAllSubmittedUsers != null);
    return getAllLecturesByCourse(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult selectFile(_SelectFile value),
    TResult downloadLecture(_DownloadLecture value),
    TResult uploadLecture(_UploadLecture value),
    TResult getAllLectures(_GetAllLectures value),
    TResult getAllLecturesByCourse(_GetAllLecturesByCourse value),
    TResult getAllCoursesByUserId(_GetAllCoursesByUserId value),
    TResult createCourse(_CreateCourse value),
    TResult submitUser(_SubmitUser value),
    TResult getAllSubmittedUsers(_GetAllSubmittedUsers value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getAllLecturesByCourse != null) {
      return getAllLecturesByCourse(this);
    }
    return orElse();
  }
}

abstract class _GetAllLecturesByCourse implements LectureEvent {
  const factory _GetAllLecturesByCourse({@required String courseTitle}) =
      _$_GetAllLecturesByCourse;

  String get courseTitle;
  @JsonKey(ignore: true)
  _$GetAllLecturesByCourseCopyWith<_GetAllLecturesByCourse> get copyWith;
}

/// @nodoc
abstract class _$GetAllCoursesByUserIdCopyWith<$Res> {
  factory _$GetAllCoursesByUserIdCopyWith(_GetAllCoursesByUserId value,
          $Res Function(_GetAllCoursesByUserId) then) =
      __$GetAllCoursesByUserIdCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetAllCoursesByUserIdCopyWithImpl<$Res>
    extends _$LectureEventCopyWithImpl<$Res>
    implements _$GetAllCoursesByUserIdCopyWith<$Res> {
  __$GetAllCoursesByUserIdCopyWithImpl(_GetAllCoursesByUserId _value,
      $Res Function(_GetAllCoursesByUserId) _then)
      : super(_value, (v) => _then(v as _GetAllCoursesByUserId));

  @override
  _GetAllCoursesByUserId get _value => super._value as _GetAllCoursesByUserId;
}

/// @nodoc
class _$_GetAllCoursesByUserId implements _GetAllCoursesByUserId {
  const _$_GetAllCoursesByUserId();

  @override
  String toString() {
    return 'LectureEvent.getAllCoursesByUserId()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GetAllCoursesByUserId);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(),
    @required TResult selectFile(),
    @required
        TResult downloadLecture(
            String fileUrl, String courseTitle, String lectureTitle),
    @required
        TResult uploadLecture(UserModel user, String title, String courseTitle,
            String filePath, String description),
    @required TResult getAllLectures(),
    @required TResult getAllLecturesByCourse(String courseTitle),
    @required TResult getAllCoursesByUserId(),
    @required TResult createCourse(String courseTitle),
    @required
        TResult submitUser(
            String userId, String courseTitle, String lectureTitle),
    @required
        TResult getAllSubmittedUsers(
            String userId, String courseTitle, String lectureTitle),
  }) {
    assert(started != null);
    assert(selectFile != null);
    assert(downloadLecture != null);
    assert(uploadLecture != null);
    assert(getAllLectures != null);
    assert(getAllLecturesByCourse != null);
    assert(getAllCoursesByUserId != null);
    assert(createCourse != null);
    assert(submitUser != null);
    assert(getAllSubmittedUsers != null);
    return getAllCoursesByUserId();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult selectFile(),
    TResult downloadLecture(
        String fileUrl, String courseTitle, String lectureTitle),
    TResult uploadLecture(UserModel user, String title, String courseTitle,
        String filePath, String description),
    TResult getAllLectures(),
    TResult getAllLecturesByCourse(String courseTitle),
    TResult getAllCoursesByUserId(),
    TResult createCourse(String courseTitle),
    TResult submitUser(String userId, String courseTitle, String lectureTitle),
    TResult getAllSubmittedUsers(
        String userId, String courseTitle, String lectureTitle),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getAllCoursesByUserId != null) {
      return getAllCoursesByUserId();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required TResult selectFile(_SelectFile value),
    @required TResult downloadLecture(_DownloadLecture value),
    @required TResult uploadLecture(_UploadLecture value),
    @required TResult getAllLectures(_GetAllLectures value),
    @required TResult getAllLecturesByCourse(_GetAllLecturesByCourse value),
    @required TResult getAllCoursesByUserId(_GetAllCoursesByUserId value),
    @required TResult createCourse(_CreateCourse value),
    @required TResult submitUser(_SubmitUser value),
    @required TResult getAllSubmittedUsers(_GetAllSubmittedUsers value),
  }) {
    assert(started != null);
    assert(selectFile != null);
    assert(downloadLecture != null);
    assert(uploadLecture != null);
    assert(getAllLectures != null);
    assert(getAllLecturesByCourse != null);
    assert(getAllCoursesByUserId != null);
    assert(createCourse != null);
    assert(submitUser != null);
    assert(getAllSubmittedUsers != null);
    return getAllCoursesByUserId(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult selectFile(_SelectFile value),
    TResult downloadLecture(_DownloadLecture value),
    TResult uploadLecture(_UploadLecture value),
    TResult getAllLectures(_GetAllLectures value),
    TResult getAllLecturesByCourse(_GetAllLecturesByCourse value),
    TResult getAllCoursesByUserId(_GetAllCoursesByUserId value),
    TResult createCourse(_CreateCourse value),
    TResult submitUser(_SubmitUser value),
    TResult getAllSubmittedUsers(_GetAllSubmittedUsers value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getAllCoursesByUserId != null) {
      return getAllCoursesByUserId(this);
    }
    return orElse();
  }
}

abstract class _GetAllCoursesByUserId implements LectureEvent {
  const factory _GetAllCoursesByUserId() = _$_GetAllCoursesByUserId;
}

/// @nodoc
abstract class _$CreateCourseCopyWith<$Res> {
  factory _$CreateCourseCopyWith(
          _CreateCourse value, $Res Function(_CreateCourse) then) =
      __$CreateCourseCopyWithImpl<$Res>;
  $Res call({String courseTitle});
}

/// @nodoc
class __$CreateCourseCopyWithImpl<$Res> extends _$LectureEventCopyWithImpl<$Res>
    implements _$CreateCourseCopyWith<$Res> {
  __$CreateCourseCopyWithImpl(
      _CreateCourse _value, $Res Function(_CreateCourse) _then)
      : super(_value, (v) => _then(v as _CreateCourse));

  @override
  _CreateCourse get _value => super._value as _CreateCourse;

  @override
  $Res call({
    Object courseTitle = freezed,
  }) {
    return _then(_CreateCourse(
      courseTitle:
          courseTitle == freezed ? _value.courseTitle : courseTitle as String,
    ));
  }
}

/// @nodoc
class _$_CreateCourse implements _CreateCourse {
  const _$_CreateCourse({@required this.courseTitle})
      : assert(courseTitle != null);

  @override
  final String courseTitle;

  @override
  String toString() {
    return 'LectureEvent.createCourse(courseTitle: $courseTitle)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CreateCourse &&
            (identical(other.courseTitle, courseTitle) ||
                const DeepCollectionEquality()
                    .equals(other.courseTitle, courseTitle)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(courseTitle);

  @JsonKey(ignore: true)
  @override
  _$CreateCourseCopyWith<_CreateCourse> get copyWith =>
      __$CreateCourseCopyWithImpl<_CreateCourse>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(),
    @required TResult selectFile(),
    @required
        TResult downloadLecture(
            String fileUrl, String courseTitle, String lectureTitle),
    @required
        TResult uploadLecture(UserModel user, String title, String courseTitle,
            String filePath, String description),
    @required TResult getAllLectures(),
    @required TResult getAllLecturesByCourse(String courseTitle),
    @required TResult getAllCoursesByUserId(),
    @required TResult createCourse(String courseTitle),
    @required
        TResult submitUser(
            String userId, String courseTitle, String lectureTitle),
    @required
        TResult getAllSubmittedUsers(
            String userId, String courseTitle, String lectureTitle),
  }) {
    assert(started != null);
    assert(selectFile != null);
    assert(downloadLecture != null);
    assert(uploadLecture != null);
    assert(getAllLectures != null);
    assert(getAllLecturesByCourse != null);
    assert(getAllCoursesByUserId != null);
    assert(createCourse != null);
    assert(submitUser != null);
    assert(getAllSubmittedUsers != null);
    return createCourse(courseTitle);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult selectFile(),
    TResult downloadLecture(
        String fileUrl, String courseTitle, String lectureTitle),
    TResult uploadLecture(UserModel user, String title, String courseTitle,
        String filePath, String description),
    TResult getAllLectures(),
    TResult getAllLecturesByCourse(String courseTitle),
    TResult getAllCoursesByUserId(),
    TResult createCourse(String courseTitle),
    TResult submitUser(String userId, String courseTitle, String lectureTitle),
    TResult getAllSubmittedUsers(
        String userId, String courseTitle, String lectureTitle),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (createCourse != null) {
      return createCourse(courseTitle);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required TResult selectFile(_SelectFile value),
    @required TResult downloadLecture(_DownloadLecture value),
    @required TResult uploadLecture(_UploadLecture value),
    @required TResult getAllLectures(_GetAllLectures value),
    @required TResult getAllLecturesByCourse(_GetAllLecturesByCourse value),
    @required TResult getAllCoursesByUserId(_GetAllCoursesByUserId value),
    @required TResult createCourse(_CreateCourse value),
    @required TResult submitUser(_SubmitUser value),
    @required TResult getAllSubmittedUsers(_GetAllSubmittedUsers value),
  }) {
    assert(started != null);
    assert(selectFile != null);
    assert(downloadLecture != null);
    assert(uploadLecture != null);
    assert(getAllLectures != null);
    assert(getAllLecturesByCourse != null);
    assert(getAllCoursesByUserId != null);
    assert(createCourse != null);
    assert(submitUser != null);
    assert(getAllSubmittedUsers != null);
    return createCourse(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult selectFile(_SelectFile value),
    TResult downloadLecture(_DownloadLecture value),
    TResult uploadLecture(_UploadLecture value),
    TResult getAllLectures(_GetAllLectures value),
    TResult getAllLecturesByCourse(_GetAllLecturesByCourse value),
    TResult getAllCoursesByUserId(_GetAllCoursesByUserId value),
    TResult createCourse(_CreateCourse value),
    TResult submitUser(_SubmitUser value),
    TResult getAllSubmittedUsers(_GetAllSubmittedUsers value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (createCourse != null) {
      return createCourse(this);
    }
    return orElse();
  }
}

abstract class _CreateCourse implements LectureEvent {
  const factory _CreateCourse({@required String courseTitle}) = _$_CreateCourse;

  String get courseTitle;
  @JsonKey(ignore: true)
  _$CreateCourseCopyWith<_CreateCourse> get copyWith;
}

/// @nodoc
abstract class _$SubmitUserCopyWith<$Res> {
  factory _$SubmitUserCopyWith(
          _SubmitUser value, $Res Function(_SubmitUser) then) =
      __$SubmitUserCopyWithImpl<$Res>;
  $Res call({String userId, String courseTitle, String lectureTitle});
}

/// @nodoc
class __$SubmitUserCopyWithImpl<$Res> extends _$LectureEventCopyWithImpl<$Res>
    implements _$SubmitUserCopyWith<$Res> {
  __$SubmitUserCopyWithImpl(
      _SubmitUser _value, $Res Function(_SubmitUser) _then)
      : super(_value, (v) => _then(v as _SubmitUser));

  @override
  _SubmitUser get _value => super._value as _SubmitUser;

  @override
  $Res call({
    Object userId = freezed,
    Object courseTitle = freezed,
    Object lectureTitle = freezed,
  }) {
    return _then(_SubmitUser(
      userId: userId == freezed ? _value.userId : userId as String,
      courseTitle:
          courseTitle == freezed ? _value.courseTitle : courseTitle as String,
      lectureTitle: lectureTitle == freezed
          ? _value.lectureTitle
          : lectureTitle as String,
    ));
  }
}

/// @nodoc
class _$_SubmitUser implements _SubmitUser {
  const _$_SubmitUser(
      {@required this.userId,
      @required this.courseTitle,
      @required this.lectureTitle})
      : assert(userId != null),
        assert(courseTitle != null),
        assert(lectureTitle != null);

  @override
  final String userId;
  @override
  final String courseTitle;
  @override
  final String lectureTitle;

  @override
  String toString() {
    return 'LectureEvent.submitUser(userId: $userId, courseTitle: $courseTitle, lectureTitle: $lectureTitle)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SubmitUser &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.courseTitle, courseTitle) ||
                const DeepCollectionEquality()
                    .equals(other.courseTitle, courseTitle)) &&
            (identical(other.lectureTitle, lectureTitle) ||
                const DeepCollectionEquality()
                    .equals(other.lectureTitle, lectureTitle)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(courseTitle) ^
      const DeepCollectionEquality().hash(lectureTitle);

  @JsonKey(ignore: true)
  @override
  _$SubmitUserCopyWith<_SubmitUser> get copyWith =>
      __$SubmitUserCopyWithImpl<_SubmitUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(),
    @required TResult selectFile(),
    @required
        TResult downloadLecture(
            String fileUrl, String courseTitle, String lectureTitle),
    @required
        TResult uploadLecture(UserModel user, String title, String courseTitle,
            String filePath, String description),
    @required TResult getAllLectures(),
    @required TResult getAllLecturesByCourse(String courseTitle),
    @required TResult getAllCoursesByUserId(),
    @required TResult createCourse(String courseTitle),
    @required
        TResult submitUser(
            String userId, String courseTitle, String lectureTitle),
    @required
        TResult getAllSubmittedUsers(
            String userId, String courseTitle, String lectureTitle),
  }) {
    assert(started != null);
    assert(selectFile != null);
    assert(downloadLecture != null);
    assert(uploadLecture != null);
    assert(getAllLectures != null);
    assert(getAllLecturesByCourse != null);
    assert(getAllCoursesByUserId != null);
    assert(createCourse != null);
    assert(submitUser != null);
    assert(getAllSubmittedUsers != null);
    return submitUser(userId, courseTitle, lectureTitle);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult selectFile(),
    TResult downloadLecture(
        String fileUrl, String courseTitle, String lectureTitle),
    TResult uploadLecture(UserModel user, String title, String courseTitle,
        String filePath, String description),
    TResult getAllLectures(),
    TResult getAllLecturesByCourse(String courseTitle),
    TResult getAllCoursesByUserId(),
    TResult createCourse(String courseTitle),
    TResult submitUser(String userId, String courseTitle, String lectureTitle),
    TResult getAllSubmittedUsers(
        String userId, String courseTitle, String lectureTitle),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (submitUser != null) {
      return submitUser(userId, courseTitle, lectureTitle);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required TResult selectFile(_SelectFile value),
    @required TResult downloadLecture(_DownloadLecture value),
    @required TResult uploadLecture(_UploadLecture value),
    @required TResult getAllLectures(_GetAllLectures value),
    @required TResult getAllLecturesByCourse(_GetAllLecturesByCourse value),
    @required TResult getAllCoursesByUserId(_GetAllCoursesByUserId value),
    @required TResult createCourse(_CreateCourse value),
    @required TResult submitUser(_SubmitUser value),
    @required TResult getAllSubmittedUsers(_GetAllSubmittedUsers value),
  }) {
    assert(started != null);
    assert(selectFile != null);
    assert(downloadLecture != null);
    assert(uploadLecture != null);
    assert(getAllLectures != null);
    assert(getAllLecturesByCourse != null);
    assert(getAllCoursesByUserId != null);
    assert(createCourse != null);
    assert(submitUser != null);
    assert(getAllSubmittedUsers != null);
    return submitUser(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult selectFile(_SelectFile value),
    TResult downloadLecture(_DownloadLecture value),
    TResult uploadLecture(_UploadLecture value),
    TResult getAllLectures(_GetAllLectures value),
    TResult getAllLecturesByCourse(_GetAllLecturesByCourse value),
    TResult getAllCoursesByUserId(_GetAllCoursesByUserId value),
    TResult createCourse(_CreateCourse value),
    TResult submitUser(_SubmitUser value),
    TResult getAllSubmittedUsers(_GetAllSubmittedUsers value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (submitUser != null) {
      return submitUser(this);
    }
    return orElse();
  }
}

abstract class _SubmitUser implements LectureEvent {
  const factory _SubmitUser(
      {@required String userId,
      @required String courseTitle,
      @required String lectureTitle}) = _$_SubmitUser;

  String get userId;
  String get courseTitle;
  String get lectureTitle;
  @JsonKey(ignore: true)
  _$SubmitUserCopyWith<_SubmitUser> get copyWith;
}

/// @nodoc
abstract class _$GetAllSubmittedUsersCopyWith<$Res> {
  factory _$GetAllSubmittedUsersCopyWith(_GetAllSubmittedUsers value,
          $Res Function(_GetAllSubmittedUsers) then) =
      __$GetAllSubmittedUsersCopyWithImpl<$Res>;
  $Res call({String userId, String courseTitle, String lectureTitle});
}

/// @nodoc
class __$GetAllSubmittedUsersCopyWithImpl<$Res>
    extends _$LectureEventCopyWithImpl<$Res>
    implements _$GetAllSubmittedUsersCopyWith<$Res> {
  __$GetAllSubmittedUsersCopyWithImpl(
      _GetAllSubmittedUsers _value, $Res Function(_GetAllSubmittedUsers) _then)
      : super(_value, (v) => _then(v as _GetAllSubmittedUsers));

  @override
  _GetAllSubmittedUsers get _value => super._value as _GetAllSubmittedUsers;

  @override
  $Res call({
    Object userId = freezed,
    Object courseTitle = freezed,
    Object lectureTitle = freezed,
  }) {
    return _then(_GetAllSubmittedUsers(
      userId: userId == freezed ? _value.userId : userId as String,
      courseTitle:
          courseTitle == freezed ? _value.courseTitle : courseTitle as String,
      lectureTitle: lectureTitle == freezed
          ? _value.lectureTitle
          : lectureTitle as String,
    ));
  }
}

/// @nodoc
class _$_GetAllSubmittedUsers implements _GetAllSubmittedUsers {
  const _$_GetAllSubmittedUsers(
      {@required this.userId,
      @required this.courseTitle,
      @required this.lectureTitle})
      : assert(userId != null),
        assert(courseTitle != null),
        assert(lectureTitle != null);

  @override
  final String userId;
  @override
  final String courseTitle;
  @override
  final String lectureTitle;

  @override
  String toString() {
    return 'LectureEvent.getAllSubmittedUsers(userId: $userId, courseTitle: $courseTitle, lectureTitle: $lectureTitle)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetAllSubmittedUsers &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.courseTitle, courseTitle) ||
                const DeepCollectionEquality()
                    .equals(other.courseTitle, courseTitle)) &&
            (identical(other.lectureTitle, lectureTitle) ||
                const DeepCollectionEquality()
                    .equals(other.lectureTitle, lectureTitle)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(courseTitle) ^
      const DeepCollectionEquality().hash(lectureTitle);

  @JsonKey(ignore: true)
  @override
  _$GetAllSubmittedUsersCopyWith<_GetAllSubmittedUsers> get copyWith =>
      __$GetAllSubmittedUsersCopyWithImpl<_GetAllSubmittedUsers>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(),
    @required TResult selectFile(),
    @required
        TResult downloadLecture(
            String fileUrl, String courseTitle, String lectureTitle),
    @required
        TResult uploadLecture(UserModel user, String title, String courseTitle,
            String filePath, String description),
    @required TResult getAllLectures(),
    @required TResult getAllLecturesByCourse(String courseTitle),
    @required TResult getAllCoursesByUserId(),
    @required TResult createCourse(String courseTitle),
    @required
        TResult submitUser(
            String userId, String courseTitle, String lectureTitle),
    @required
        TResult getAllSubmittedUsers(
            String userId, String courseTitle, String lectureTitle),
  }) {
    assert(started != null);
    assert(selectFile != null);
    assert(downloadLecture != null);
    assert(uploadLecture != null);
    assert(getAllLectures != null);
    assert(getAllLecturesByCourse != null);
    assert(getAllCoursesByUserId != null);
    assert(createCourse != null);
    assert(submitUser != null);
    assert(getAllSubmittedUsers != null);
    return getAllSubmittedUsers(userId, courseTitle, lectureTitle);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult selectFile(),
    TResult downloadLecture(
        String fileUrl, String courseTitle, String lectureTitle),
    TResult uploadLecture(UserModel user, String title, String courseTitle,
        String filePath, String description),
    TResult getAllLectures(),
    TResult getAllLecturesByCourse(String courseTitle),
    TResult getAllCoursesByUserId(),
    TResult createCourse(String courseTitle),
    TResult submitUser(String userId, String courseTitle, String lectureTitle),
    TResult getAllSubmittedUsers(
        String userId, String courseTitle, String lectureTitle),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getAllSubmittedUsers != null) {
      return getAllSubmittedUsers(userId, courseTitle, lectureTitle);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required TResult selectFile(_SelectFile value),
    @required TResult downloadLecture(_DownloadLecture value),
    @required TResult uploadLecture(_UploadLecture value),
    @required TResult getAllLectures(_GetAllLectures value),
    @required TResult getAllLecturesByCourse(_GetAllLecturesByCourse value),
    @required TResult getAllCoursesByUserId(_GetAllCoursesByUserId value),
    @required TResult createCourse(_CreateCourse value),
    @required TResult submitUser(_SubmitUser value),
    @required TResult getAllSubmittedUsers(_GetAllSubmittedUsers value),
  }) {
    assert(started != null);
    assert(selectFile != null);
    assert(downloadLecture != null);
    assert(uploadLecture != null);
    assert(getAllLectures != null);
    assert(getAllLecturesByCourse != null);
    assert(getAllCoursesByUserId != null);
    assert(createCourse != null);
    assert(submitUser != null);
    assert(getAllSubmittedUsers != null);
    return getAllSubmittedUsers(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult selectFile(_SelectFile value),
    TResult downloadLecture(_DownloadLecture value),
    TResult uploadLecture(_UploadLecture value),
    TResult getAllLectures(_GetAllLectures value),
    TResult getAllLecturesByCourse(_GetAllLecturesByCourse value),
    TResult getAllCoursesByUserId(_GetAllCoursesByUserId value),
    TResult createCourse(_CreateCourse value),
    TResult submitUser(_SubmitUser value),
    TResult getAllSubmittedUsers(_GetAllSubmittedUsers value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getAllSubmittedUsers != null) {
      return getAllSubmittedUsers(this);
    }
    return orElse();
  }
}

abstract class _GetAllSubmittedUsers implements LectureEvent {
  const factory _GetAllSubmittedUsers(
      {@required String userId,
      @required String courseTitle,
      @required String lectureTitle}) = _$_GetAllSubmittedUsers;

  String get userId;
  String get courseTitle;
  String get lectureTitle;
  @JsonKey(ignore: true)
  _$GetAllSubmittedUsersCopyWith<_GetAllSubmittedUsers> get copyWith;
}

/// @nodoc
class _$LectureStateTearOff {
  const _$LectureStateTearOff();

// ignore: unused_element
  _LectureState call(
      {@required
          LectureEntity lecture,
      @required
          String userId,
      @required
          String filePath,
      @required
          bool isSubmitting,
      @required
          List<LectureEntity> lectures,
      @required
          List<String> courseIds,
      @required
          Option<Either<LectureFailure, Unit>> lectureFailureOrSuccessOption}) {
    return _LectureState(
      lecture: lecture,
      userId: userId,
      filePath: filePath,
      isSubmitting: isSubmitting,
      lectures: lectures,
      courseIds: courseIds,
      lectureFailureOrSuccessOption: lectureFailureOrSuccessOption,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $LectureState = _$LectureStateTearOff();

/// @nodoc
mixin _$LectureState {
  LectureEntity get lecture;
  String get userId;
  String get filePath;
  bool get isSubmitting;
  List<LectureEntity> get lectures;
  List<String> get courseIds; // @required List<String> submittedUsers,
  Option<Either<LectureFailure, Unit>> get lectureFailureOrSuccessOption;

  @JsonKey(ignore: true)
  $LectureStateCopyWith<LectureState> get copyWith;
}

/// @nodoc
abstract class $LectureStateCopyWith<$Res> {
  factory $LectureStateCopyWith(
          LectureState value, $Res Function(LectureState) then) =
      _$LectureStateCopyWithImpl<$Res>;
  $Res call(
      {LectureEntity lecture,
      String userId,
      String filePath,
      bool isSubmitting,
      List<LectureEntity> lectures,
      List<String> courseIds,
      Option<Either<LectureFailure, Unit>> lectureFailureOrSuccessOption});
}

/// @nodoc
class _$LectureStateCopyWithImpl<$Res> implements $LectureStateCopyWith<$Res> {
  _$LectureStateCopyWithImpl(this._value, this._then);

  final LectureState _value;
  // ignore: unused_field
  final $Res Function(LectureState) _then;

  @override
  $Res call({
    Object lecture = freezed,
    Object userId = freezed,
    Object filePath = freezed,
    Object isSubmitting = freezed,
    Object lectures = freezed,
    Object courseIds = freezed,
    Object lectureFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      lecture: lecture == freezed ? _value.lecture : lecture as LectureEntity,
      userId: userId == freezed ? _value.userId : userId as String,
      filePath: filePath == freezed ? _value.filePath : filePath as String,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      lectures: lectures == freezed
          ? _value.lectures
          : lectures as List<LectureEntity>,
      courseIds:
          courseIds == freezed ? _value.courseIds : courseIds as List<String>,
      lectureFailureOrSuccessOption: lectureFailureOrSuccessOption == freezed
          ? _value.lectureFailureOrSuccessOption
          : lectureFailureOrSuccessOption
              as Option<Either<LectureFailure, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$LectureStateCopyWith<$Res>
    implements $LectureStateCopyWith<$Res> {
  factory _$LectureStateCopyWith(
          _LectureState value, $Res Function(_LectureState) then) =
      __$LectureStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {LectureEntity lecture,
      String userId,
      String filePath,
      bool isSubmitting,
      List<LectureEntity> lectures,
      List<String> courseIds,
      Option<Either<LectureFailure, Unit>> lectureFailureOrSuccessOption});
}

/// @nodoc
class __$LectureStateCopyWithImpl<$Res> extends _$LectureStateCopyWithImpl<$Res>
    implements _$LectureStateCopyWith<$Res> {
  __$LectureStateCopyWithImpl(
      _LectureState _value, $Res Function(_LectureState) _then)
      : super(_value, (v) => _then(v as _LectureState));

  @override
  _LectureState get _value => super._value as _LectureState;

  @override
  $Res call({
    Object lecture = freezed,
    Object userId = freezed,
    Object filePath = freezed,
    Object isSubmitting = freezed,
    Object lectures = freezed,
    Object courseIds = freezed,
    Object lectureFailureOrSuccessOption = freezed,
  }) {
    return _then(_LectureState(
      lecture: lecture == freezed ? _value.lecture : lecture as LectureEntity,
      userId: userId == freezed ? _value.userId : userId as String,
      filePath: filePath == freezed ? _value.filePath : filePath as String,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      lectures: lectures == freezed
          ? _value.lectures
          : lectures as List<LectureEntity>,
      courseIds:
          courseIds == freezed ? _value.courseIds : courseIds as List<String>,
      lectureFailureOrSuccessOption: lectureFailureOrSuccessOption == freezed
          ? _value.lectureFailureOrSuccessOption
          : lectureFailureOrSuccessOption
              as Option<Either<LectureFailure, Unit>>,
    ));
  }
}

/// @nodoc
class _$_LectureState implements _LectureState {
  const _$_LectureState(
      {@required this.lecture,
      @required this.userId,
      @required this.filePath,
      @required this.isSubmitting,
      @required this.lectures,
      @required this.courseIds,
      @required this.lectureFailureOrSuccessOption})
      : assert(lecture != null),
        assert(userId != null),
        assert(filePath != null),
        assert(isSubmitting != null),
        assert(lectures != null),
        assert(courseIds != null),
        assert(lectureFailureOrSuccessOption != null);

  @override
  final LectureEntity lecture;
  @override
  final String userId;
  @override
  final String filePath;
  @override
  final bool isSubmitting;
  @override
  final List<LectureEntity> lectures;
  @override
  final List<String> courseIds;
  @override // @required List<String> submittedUsers,
  final Option<Either<LectureFailure, Unit>> lectureFailureOrSuccessOption;

  @override
  String toString() {
    return 'LectureState(lecture: $lecture, userId: $userId, filePath: $filePath, isSubmitting: $isSubmitting, lectures: $lectures, courseIds: $courseIds, lectureFailureOrSuccessOption: $lectureFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LectureState &&
            (identical(other.lecture, lecture) ||
                const DeepCollectionEquality()
                    .equals(other.lecture, lecture)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.filePath, filePath) ||
                const DeepCollectionEquality()
                    .equals(other.filePath, filePath)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.lectures, lectures) ||
                const DeepCollectionEquality()
                    .equals(other.lectures, lectures)) &&
            (identical(other.courseIds, courseIds) ||
                const DeepCollectionEquality()
                    .equals(other.courseIds, courseIds)) &&
            (identical(other.lectureFailureOrSuccessOption,
                    lectureFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.lectureFailureOrSuccessOption,
                    lectureFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(lecture) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(filePath) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(lectures) ^
      const DeepCollectionEquality().hash(courseIds) ^
      const DeepCollectionEquality().hash(lectureFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$LectureStateCopyWith<_LectureState> get copyWith =>
      __$LectureStateCopyWithImpl<_LectureState>(this, _$identity);
}

abstract class _LectureState implements LectureState {
  const factory _LectureState(
      {@required
          LectureEntity lecture,
      @required
          String userId,
      @required
          String filePath,
      @required
          bool isSubmitting,
      @required
          List<LectureEntity> lectures,
      @required
          List<String> courseIds,
      @required
          Option<Either<LectureFailure, Unit>>
              lectureFailureOrSuccessOption}) = _$_LectureState;

  @override
  LectureEntity get lecture;
  @override
  String get userId;
  @override
  String get filePath;
  @override
  bool get isSubmitting;
  @override
  List<LectureEntity> get lectures;
  @override
  List<String> get courseIds;
  @override // @required List<String> submittedUsers,
  Option<Either<LectureFailure, Unit>> get lectureFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$LectureStateCopyWith<_LectureState> get copyWith;
}
