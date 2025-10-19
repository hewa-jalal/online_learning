// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lecture_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LectureEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() selectFile,
    required TResult Function(
            String fileUrl, String courseTitle, String lectureTitle)
        downloadLecture,
    required TResult Function(UserModel user, String title, String courseTitle,
            String? description)
        uploadLecture,
    required TResult Function() getAllLectures,
    required TResult Function(String courseTitle) getAllLecturesByCourse,
    required TResult Function(String courseDept) getAllCoursesByDept,
    required TResult Function(String courseTitle, String userDept) createCourse,
    required TResult Function(
            String userId, String courseTitle, String lectureTitle)
        submitUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? selectFile,
    TResult? Function(String fileUrl, String courseTitle, String lectureTitle)?
        downloadLecture,
    TResult? Function(UserModel user, String title, String courseTitle,
            String? description)?
        uploadLecture,
    TResult? Function()? getAllLectures,
    TResult? Function(String courseTitle)? getAllLecturesByCourse,
    TResult? Function(String courseDept)? getAllCoursesByDept,
    TResult? Function(String courseTitle, String userDept)? createCourse,
    TResult? Function(String userId, String courseTitle, String lectureTitle)?
        submitUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? selectFile,
    TResult Function(String fileUrl, String courseTitle, String lectureTitle)?
        downloadLecture,
    TResult Function(UserModel user, String title, String courseTitle,
            String? description)?
        uploadLecture,
    TResult Function()? getAllLectures,
    TResult Function(String courseTitle)? getAllLecturesByCourse,
    TResult Function(String courseDept)? getAllCoursesByDept,
    TResult Function(String courseTitle, String userDept)? createCourse,
    TResult Function(String userId, String courseTitle, String lectureTitle)?
        submitUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SelectFile value) selectFile,
    required TResult Function(_DownloadLecture value) downloadLecture,
    required TResult Function(_UploadLecture value) uploadLecture,
    required TResult Function(_GetAllLectures value) getAllLectures,
    required TResult Function(_GetAllLecturesByCourse value)
        getAllLecturesByCourse,
    required TResult Function(_GetAllCoursesByDept value) getAllCoursesByDept,
    required TResult Function(_CreateCourse value) createCourse,
    required TResult Function(_SubmitUser value) submitUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SelectFile value)? selectFile,
    TResult? Function(_DownloadLecture value)? downloadLecture,
    TResult? Function(_UploadLecture value)? uploadLecture,
    TResult? Function(_GetAllLectures value)? getAllLectures,
    TResult? Function(_GetAllLecturesByCourse value)? getAllLecturesByCourse,
    TResult? Function(_GetAllCoursesByDept value)? getAllCoursesByDept,
    TResult? Function(_CreateCourse value)? createCourse,
    TResult? Function(_SubmitUser value)? submitUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SelectFile value)? selectFile,
    TResult Function(_DownloadLecture value)? downloadLecture,
    TResult Function(_UploadLecture value)? uploadLecture,
    TResult Function(_GetAllLectures value)? getAllLectures,
    TResult Function(_GetAllLecturesByCourse value)? getAllLecturesByCourse,
    TResult Function(_GetAllCoursesByDept value)? getAllCoursesByDept,
    TResult Function(_CreateCourse value)? createCourse,
    TResult Function(_SubmitUser value)? submitUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LectureEventCopyWith<$Res> {
  factory $LectureEventCopyWith(
          LectureEvent value, $Res Function(LectureEvent) then) =
      _$LectureEventCopyWithImpl<$Res, LectureEvent>;
}

/// @nodoc
class _$LectureEventCopyWithImpl<$Res, $Val extends LectureEvent>
    implements $LectureEventCopyWith<$Res> {
  _$LectureEventCopyWithImpl(this._value, this._then);

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
    extends _$LectureEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'LectureEvent.started()';
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
    required TResult Function() selectFile,
    required TResult Function(
            String fileUrl, String courseTitle, String lectureTitle)
        downloadLecture,
    required TResult Function(UserModel user, String title, String courseTitle,
            String? description)
        uploadLecture,
    required TResult Function() getAllLectures,
    required TResult Function(String courseTitle) getAllLecturesByCourse,
    required TResult Function(String courseDept) getAllCoursesByDept,
    required TResult Function(String courseTitle, String userDept) createCourse,
    required TResult Function(
            String userId, String courseTitle, String lectureTitle)
        submitUser,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? selectFile,
    TResult? Function(String fileUrl, String courseTitle, String lectureTitle)?
        downloadLecture,
    TResult? Function(UserModel user, String title, String courseTitle,
            String? description)?
        uploadLecture,
    TResult? Function()? getAllLectures,
    TResult? Function(String courseTitle)? getAllLecturesByCourse,
    TResult? Function(String courseDept)? getAllCoursesByDept,
    TResult? Function(String courseTitle, String userDept)? createCourse,
    TResult? Function(String userId, String courseTitle, String lectureTitle)?
        submitUser,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? selectFile,
    TResult Function(String fileUrl, String courseTitle, String lectureTitle)?
        downloadLecture,
    TResult Function(UserModel user, String title, String courseTitle,
            String? description)?
        uploadLecture,
    TResult Function()? getAllLectures,
    TResult Function(String courseTitle)? getAllLecturesByCourse,
    TResult Function(String courseDept)? getAllCoursesByDept,
    TResult Function(String courseTitle, String userDept)? createCourse,
    TResult Function(String userId, String courseTitle, String lectureTitle)?
        submitUser,
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
    required TResult Function(_SelectFile value) selectFile,
    required TResult Function(_DownloadLecture value) downloadLecture,
    required TResult Function(_UploadLecture value) uploadLecture,
    required TResult Function(_GetAllLectures value) getAllLectures,
    required TResult Function(_GetAllLecturesByCourse value)
        getAllLecturesByCourse,
    required TResult Function(_GetAllCoursesByDept value) getAllCoursesByDept,
    required TResult Function(_CreateCourse value) createCourse,
    required TResult Function(_SubmitUser value) submitUser,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SelectFile value)? selectFile,
    TResult? Function(_DownloadLecture value)? downloadLecture,
    TResult? Function(_UploadLecture value)? uploadLecture,
    TResult? Function(_GetAllLectures value)? getAllLectures,
    TResult? Function(_GetAllLecturesByCourse value)? getAllLecturesByCourse,
    TResult? Function(_GetAllCoursesByDept value)? getAllCoursesByDept,
    TResult? Function(_CreateCourse value)? createCourse,
    TResult? Function(_SubmitUser value)? submitUser,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SelectFile value)? selectFile,
    TResult Function(_DownloadLecture value)? downloadLecture,
    TResult Function(_UploadLecture value)? uploadLecture,
    TResult Function(_GetAllLectures value)? getAllLectures,
    TResult Function(_GetAllLecturesByCourse value)? getAllLecturesByCourse,
    TResult Function(_GetAllCoursesByDept value)? getAllCoursesByDept,
    TResult Function(_CreateCourse value)? createCourse,
    TResult Function(_SubmitUser value)? submitUser,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements LectureEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$SelectFileImplCopyWith<$Res> {
  factory _$$SelectFileImplCopyWith(
          _$SelectFileImpl value, $Res Function(_$SelectFileImpl) then) =
      __$$SelectFileImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SelectFileImplCopyWithImpl<$Res>
    extends _$LectureEventCopyWithImpl<$Res, _$SelectFileImpl>
    implements _$$SelectFileImplCopyWith<$Res> {
  __$$SelectFileImplCopyWithImpl(
      _$SelectFileImpl _value, $Res Function(_$SelectFileImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SelectFileImpl implements _SelectFile {
  const _$SelectFileImpl();

  @override
  String toString() {
    return 'LectureEvent.selectFile()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SelectFileImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() selectFile,
    required TResult Function(
            String fileUrl, String courseTitle, String lectureTitle)
        downloadLecture,
    required TResult Function(UserModel user, String title, String courseTitle,
            String? description)
        uploadLecture,
    required TResult Function() getAllLectures,
    required TResult Function(String courseTitle) getAllLecturesByCourse,
    required TResult Function(String courseDept) getAllCoursesByDept,
    required TResult Function(String courseTitle, String userDept) createCourse,
    required TResult Function(
            String userId, String courseTitle, String lectureTitle)
        submitUser,
  }) {
    return selectFile();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? selectFile,
    TResult? Function(String fileUrl, String courseTitle, String lectureTitle)?
        downloadLecture,
    TResult? Function(UserModel user, String title, String courseTitle,
            String? description)?
        uploadLecture,
    TResult? Function()? getAllLectures,
    TResult? Function(String courseTitle)? getAllLecturesByCourse,
    TResult? Function(String courseDept)? getAllCoursesByDept,
    TResult? Function(String courseTitle, String userDept)? createCourse,
    TResult? Function(String userId, String courseTitle, String lectureTitle)?
        submitUser,
  }) {
    return selectFile?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? selectFile,
    TResult Function(String fileUrl, String courseTitle, String lectureTitle)?
        downloadLecture,
    TResult Function(UserModel user, String title, String courseTitle,
            String? description)?
        uploadLecture,
    TResult Function()? getAllLectures,
    TResult Function(String courseTitle)? getAllLecturesByCourse,
    TResult Function(String courseDept)? getAllCoursesByDept,
    TResult Function(String courseTitle, String userDept)? createCourse,
    TResult Function(String userId, String courseTitle, String lectureTitle)?
        submitUser,
    required TResult orElse(),
  }) {
    if (selectFile != null) {
      return selectFile();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SelectFile value) selectFile,
    required TResult Function(_DownloadLecture value) downloadLecture,
    required TResult Function(_UploadLecture value) uploadLecture,
    required TResult Function(_GetAllLectures value) getAllLectures,
    required TResult Function(_GetAllLecturesByCourse value)
        getAllLecturesByCourse,
    required TResult Function(_GetAllCoursesByDept value) getAllCoursesByDept,
    required TResult Function(_CreateCourse value) createCourse,
    required TResult Function(_SubmitUser value) submitUser,
  }) {
    return selectFile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SelectFile value)? selectFile,
    TResult? Function(_DownloadLecture value)? downloadLecture,
    TResult? Function(_UploadLecture value)? uploadLecture,
    TResult? Function(_GetAllLectures value)? getAllLectures,
    TResult? Function(_GetAllLecturesByCourse value)? getAllLecturesByCourse,
    TResult? Function(_GetAllCoursesByDept value)? getAllCoursesByDept,
    TResult? Function(_CreateCourse value)? createCourse,
    TResult? Function(_SubmitUser value)? submitUser,
  }) {
    return selectFile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SelectFile value)? selectFile,
    TResult Function(_DownloadLecture value)? downloadLecture,
    TResult Function(_UploadLecture value)? uploadLecture,
    TResult Function(_GetAllLectures value)? getAllLectures,
    TResult Function(_GetAllLecturesByCourse value)? getAllLecturesByCourse,
    TResult Function(_GetAllCoursesByDept value)? getAllCoursesByDept,
    TResult Function(_CreateCourse value)? createCourse,
    TResult Function(_SubmitUser value)? submitUser,
    required TResult orElse(),
  }) {
    if (selectFile != null) {
      return selectFile(this);
    }
    return orElse();
  }
}

abstract class _SelectFile implements LectureEvent {
  const factory _SelectFile() = _$SelectFileImpl;
}

/// @nodoc
abstract class _$$DownloadLectureImplCopyWith<$Res> {
  factory _$$DownloadLectureImplCopyWith(_$DownloadLectureImpl value,
          $Res Function(_$DownloadLectureImpl) then) =
      __$$DownloadLectureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String fileUrl, String courseTitle, String lectureTitle});
}

/// @nodoc
class __$$DownloadLectureImplCopyWithImpl<$Res>
    extends _$LectureEventCopyWithImpl<$Res, _$DownloadLectureImpl>
    implements _$$DownloadLectureImplCopyWith<$Res> {
  __$$DownloadLectureImplCopyWithImpl(
      _$DownloadLectureImpl _value, $Res Function(_$DownloadLectureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileUrl = null,
    Object? courseTitle = null,
    Object? lectureTitle = null,
  }) {
    return _then(_$DownloadLectureImpl(
      fileUrl: null == fileUrl
          ? _value.fileUrl
          : fileUrl // ignore: cast_nullable_to_non_nullable
              as String,
      courseTitle: null == courseTitle
          ? _value.courseTitle
          : courseTitle // ignore: cast_nullable_to_non_nullable
              as String,
      lectureTitle: null == lectureTitle
          ? _value.lectureTitle
          : lectureTitle // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DownloadLectureImpl implements _DownloadLecture {
  const _$DownloadLectureImpl(
      {required this.fileUrl,
      required this.courseTitle,
      required this.lectureTitle});

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DownloadLectureImpl &&
            (identical(other.fileUrl, fileUrl) || other.fileUrl == fileUrl) &&
            (identical(other.courseTitle, courseTitle) ||
                other.courseTitle == courseTitle) &&
            (identical(other.lectureTitle, lectureTitle) ||
                other.lectureTitle == lectureTitle));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, fileUrl, courseTitle, lectureTitle);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DownloadLectureImplCopyWith<_$DownloadLectureImpl> get copyWith =>
      __$$DownloadLectureImplCopyWithImpl<_$DownloadLectureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() selectFile,
    required TResult Function(
            String fileUrl, String courseTitle, String lectureTitle)
        downloadLecture,
    required TResult Function(UserModel user, String title, String courseTitle,
            String? description)
        uploadLecture,
    required TResult Function() getAllLectures,
    required TResult Function(String courseTitle) getAllLecturesByCourse,
    required TResult Function(String courseDept) getAllCoursesByDept,
    required TResult Function(String courseTitle, String userDept) createCourse,
    required TResult Function(
            String userId, String courseTitle, String lectureTitle)
        submitUser,
  }) {
    return downloadLecture(fileUrl, courseTitle, lectureTitle);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? selectFile,
    TResult? Function(String fileUrl, String courseTitle, String lectureTitle)?
        downloadLecture,
    TResult? Function(UserModel user, String title, String courseTitle,
            String? description)?
        uploadLecture,
    TResult? Function()? getAllLectures,
    TResult? Function(String courseTitle)? getAllLecturesByCourse,
    TResult? Function(String courseDept)? getAllCoursesByDept,
    TResult? Function(String courseTitle, String userDept)? createCourse,
    TResult? Function(String userId, String courseTitle, String lectureTitle)?
        submitUser,
  }) {
    return downloadLecture?.call(fileUrl, courseTitle, lectureTitle);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? selectFile,
    TResult Function(String fileUrl, String courseTitle, String lectureTitle)?
        downloadLecture,
    TResult Function(UserModel user, String title, String courseTitle,
            String? description)?
        uploadLecture,
    TResult Function()? getAllLectures,
    TResult Function(String courseTitle)? getAllLecturesByCourse,
    TResult Function(String courseDept)? getAllCoursesByDept,
    TResult Function(String courseTitle, String userDept)? createCourse,
    TResult Function(String userId, String courseTitle, String lectureTitle)?
        submitUser,
    required TResult orElse(),
  }) {
    if (downloadLecture != null) {
      return downloadLecture(fileUrl, courseTitle, lectureTitle);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SelectFile value) selectFile,
    required TResult Function(_DownloadLecture value) downloadLecture,
    required TResult Function(_UploadLecture value) uploadLecture,
    required TResult Function(_GetAllLectures value) getAllLectures,
    required TResult Function(_GetAllLecturesByCourse value)
        getAllLecturesByCourse,
    required TResult Function(_GetAllCoursesByDept value) getAllCoursesByDept,
    required TResult Function(_CreateCourse value) createCourse,
    required TResult Function(_SubmitUser value) submitUser,
  }) {
    return downloadLecture(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SelectFile value)? selectFile,
    TResult? Function(_DownloadLecture value)? downloadLecture,
    TResult? Function(_UploadLecture value)? uploadLecture,
    TResult? Function(_GetAllLectures value)? getAllLectures,
    TResult? Function(_GetAllLecturesByCourse value)? getAllLecturesByCourse,
    TResult? Function(_GetAllCoursesByDept value)? getAllCoursesByDept,
    TResult? Function(_CreateCourse value)? createCourse,
    TResult? Function(_SubmitUser value)? submitUser,
  }) {
    return downloadLecture?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SelectFile value)? selectFile,
    TResult Function(_DownloadLecture value)? downloadLecture,
    TResult Function(_UploadLecture value)? uploadLecture,
    TResult Function(_GetAllLectures value)? getAllLectures,
    TResult Function(_GetAllLecturesByCourse value)? getAllLecturesByCourse,
    TResult Function(_GetAllCoursesByDept value)? getAllCoursesByDept,
    TResult Function(_CreateCourse value)? createCourse,
    TResult Function(_SubmitUser value)? submitUser,
    required TResult orElse(),
  }) {
    if (downloadLecture != null) {
      return downloadLecture(this);
    }
    return orElse();
  }
}

abstract class _DownloadLecture implements LectureEvent {
  const factory _DownloadLecture(
      {required final String fileUrl,
      required final String courseTitle,
      required final String lectureTitle}) = _$DownloadLectureImpl;

  String get fileUrl;
  String get courseTitle;
  String get lectureTitle;
  @JsonKey(ignore: true)
  _$$DownloadLectureImplCopyWith<_$DownloadLectureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UploadLectureImplCopyWith<$Res> {
  factory _$$UploadLectureImplCopyWith(
          _$UploadLectureImpl value, $Res Function(_$UploadLectureImpl) then) =
      __$$UploadLectureImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {UserModel user, String title, String courseTitle, String? description});
}

/// @nodoc
class __$$UploadLectureImplCopyWithImpl<$Res>
    extends _$LectureEventCopyWithImpl<$Res, _$UploadLectureImpl>
    implements _$$UploadLectureImplCopyWith<$Res> {
  __$$UploadLectureImplCopyWithImpl(
      _$UploadLectureImpl _value, $Res Function(_$UploadLectureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? title = null,
    Object? courseTitle = null,
    Object? description = freezed,
  }) {
    return _then(_$UploadLectureImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      courseTitle: null == courseTitle
          ? _value.courseTitle
          : courseTitle // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$UploadLectureImpl implements _UploadLecture {
  const _$UploadLectureImpl(
      {required this.user,
      required this.title,
      required this.courseTitle,
      this.description});

  @override
  final UserModel user;
  @override
  final String title;
  @override
  final String courseTitle;
  @override
  final String? description;

  @override
  String toString() {
    return 'LectureEvent.uploadLecture(user: $user, title: $title, courseTitle: $courseTitle, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadLectureImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.courseTitle, courseTitle) ||
                other.courseTitle == courseTitle) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, user, title, courseTitle, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadLectureImplCopyWith<_$UploadLectureImpl> get copyWith =>
      __$$UploadLectureImplCopyWithImpl<_$UploadLectureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() selectFile,
    required TResult Function(
            String fileUrl, String courseTitle, String lectureTitle)
        downloadLecture,
    required TResult Function(UserModel user, String title, String courseTitle,
            String? description)
        uploadLecture,
    required TResult Function() getAllLectures,
    required TResult Function(String courseTitle) getAllLecturesByCourse,
    required TResult Function(String courseDept) getAllCoursesByDept,
    required TResult Function(String courseTitle, String userDept) createCourse,
    required TResult Function(
            String userId, String courseTitle, String lectureTitle)
        submitUser,
  }) {
    return uploadLecture(user, title, courseTitle, description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? selectFile,
    TResult? Function(String fileUrl, String courseTitle, String lectureTitle)?
        downloadLecture,
    TResult? Function(UserModel user, String title, String courseTitle,
            String? description)?
        uploadLecture,
    TResult? Function()? getAllLectures,
    TResult? Function(String courseTitle)? getAllLecturesByCourse,
    TResult? Function(String courseDept)? getAllCoursesByDept,
    TResult? Function(String courseTitle, String userDept)? createCourse,
    TResult? Function(String userId, String courseTitle, String lectureTitle)?
        submitUser,
  }) {
    return uploadLecture?.call(user, title, courseTitle, description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? selectFile,
    TResult Function(String fileUrl, String courseTitle, String lectureTitle)?
        downloadLecture,
    TResult Function(UserModel user, String title, String courseTitle,
            String? description)?
        uploadLecture,
    TResult Function()? getAllLectures,
    TResult Function(String courseTitle)? getAllLecturesByCourse,
    TResult Function(String courseDept)? getAllCoursesByDept,
    TResult Function(String courseTitle, String userDept)? createCourse,
    TResult Function(String userId, String courseTitle, String lectureTitle)?
        submitUser,
    required TResult orElse(),
  }) {
    if (uploadLecture != null) {
      return uploadLecture(user, title, courseTitle, description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SelectFile value) selectFile,
    required TResult Function(_DownloadLecture value) downloadLecture,
    required TResult Function(_UploadLecture value) uploadLecture,
    required TResult Function(_GetAllLectures value) getAllLectures,
    required TResult Function(_GetAllLecturesByCourse value)
        getAllLecturesByCourse,
    required TResult Function(_GetAllCoursesByDept value) getAllCoursesByDept,
    required TResult Function(_CreateCourse value) createCourse,
    required TResult Function(_SubmitUser value) submitUser,
  }) {
    return uploadLecture(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SelectFile value)? selectFile,
    TResult? Function(_DownloadLecture value)? downloadLecture,
    TResult? Function(_UploadLecture value)? uploadLecture,
    TResult? Function(_GetAllLectures value)? getAllLectures,
    TResult? Function(_GetAllLecturesByCourse value)? getAllLecturesByCourse,
    TResult? Function(_GetAllCoursesByDept value)? getAllCoursesByDept,
    TResult? Function(_CreateCourse value)? createCourse,
    TResult? Function(_SubmitUser value)? submitUser,
  }) {
    return uploadLecture?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SelectFile value)? selectFile,
    TResult Function(_DownloadLecture value)? downloadLecture,
    TResult Function(_UploadLecture value)? uploadLecture,
    TResult Function(_GetAllLectures value)? getAllLectures,
    TResult Function(_GetAllLecturesByCourse value)? getAllLecturesByCourse,
    TResult Function(_GetAllCoursesByDept value)? getAllCoursesByDept,
    TResult Function(_CreateCourse value)? createCourse,
    TResult Function(_SubmitUser value)? submitUser,
    required TResult orElse(),
  }) {
    if (uploadLecture != null) {
      return uploadLecture(this);
    }
    return orElse();
  }
}

abstract class _UploadLecture implements LectureEvent {
  const factory _UploadLecture(
      {required final UserModel user,
      required final String title,
      required final String courseTitle,
      final String? description}) = _$UploadLectureImpl;

  UserModel get user;
  String get title;
  String get courseTitle;
  String? get description;
  @JsonKey(ignore: true)
  _$$UploadLectureImplCopyWith<_$UploadLectureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetAllLecturesImplCopyWith<$Res> {
  factory _$$GetAllLecturesImplCopyWith(_$GetAllLecturesImpl value,
          $Res Function(_$GetAllLecturesImpl) then) =
      __$$GetAllLecturesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAllLecturesImplCopyWithImpl<$Res>
    extends _$LectureEventCopyWithImpl<$Res, _$GetAllLecturesImpl>
    implements _$$GetAllLecturesImplCopyWith<$Res> {
  __$$GetAllLecturesImplCopyWithImpl(
      _$GetAllLecturesImpl _value, $Res Function(_$GetAllLecturesImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetAllLecturesImpl implements _GetAllLectures {
  const _$GetAllLecturesImpl();

  @override
  String toString() {
    return 'LectureEvent.getAllLectures()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetAllLecturesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() selectFile,
    required TResult Function(
            String fileUrl, String courseTitle, String lectureTitle)
        downloadLecture,
    required TResult Function(UserModel user, String title, String courseTitle,
            String? description)
        uploadLecture,
    required TResult Function() getAllLectures,
    required TResult Function(String courseTitle) getAllLecturesByCourse,
    required TResult Function(String courseDept) getAllCoursesByDept,
    required TResult Function(String courseTitle, String userDept) createCourse,
    required TResult Function(
            String userId, String courseTitle, String lectureTitle)
        submitUser,
  }) {
    return getAllLectures();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? selectFile,
    TResult? Function(String fileUrl, String courseTitle, String lectureTitle)?
        downloadLecture,
    TResult? Function(UserModel user, String title, String courseTitle,
            String? description)?
        uploadLecture,
    TResult? Function()? getAllLectures,
    TResult? Function(String courseTitle)? getAllLecturesByCourse,
    TResult? Function(String courseDept)? getAllCoursesByDept,
    TResult? Function(String courseTitle, String userDept)? createCourse,
    TResult? Function(String userId, String courseTitle, String lectureTitle)?
        submitUser,
  }) {
    return getAllLectures?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? selectFile,
    TResult Function(String fileUrl, String courseTitle, String lectureTitle)?
        downloadLecture,
    TResult Function(UserModel user, String title, String courseTitle,
            String? description)?
        uploadLecture,
    TResult Function()? getAllLectures,
    TResult Function(String courseTitle)? getAllLecturesByCourse,
    TResult Function(String courseDept)? getAllCoursesByDept,
    TResult Function(String courseTitle, String userDept)? createCourse,
    TResult Function(String userId, String courseTitle, String lectureTitle)?
        submitUser,
    required TResult orElse(),
  }) {
    if (getAllLectures != null) {
      return getAllLectures();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SelectFile value) selectFile,
    required TResult Function(_DownloadLecture value) downloadLecture,
    required TResult Function(_UploadLecture value) uploadLecture,
    required TResult Function(_GetAllLectures value) getAllLectures,
    required TResult Function(_GetAllLecturesByCourse value)
        getAllLecturesByCourse,
    required TResult Function(_GetAllCoursesByDept value) getAllCoursesByDept,
    required TResult Function(_CreateCourse value) createCourse,
    required TResult Function(_SubmitUser value) submitUser,
  }) {
    return getAllLectures(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SelectFile value)? selectFile,
    TResult? Function(_DownloadLecture value)? downloadLecture,
    TResult? Function(_UploadLecture value)? uploadLecture,
    TResult? Function(_GetAllLectures value)? getAllLectures,
    TResult? Function(_GetAllLecturesByCourse value)? getAllLecturesByCourse,
    TResult? Function(_GetAllCoursesByDept value)? getAllCoursesByDept,
    TResult? Function(_CreateCourse value)? createCourse,
    TResult? Function(_SubmitUser value)? submitUser,
  }) {
    return getAllLectures?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SelectFile value)? selectFile,
    TResult Function(_DownloadLecture value)? downloadLecture,
    TResult Function(_UploadLecture value)? uploadLecture,
    TResult Function(_GetAllLectures value)? getAllLectures,
    TResult Function(_GetAllLecturesByCourse value)? getAllLecturesByCourse,
    TResult Function(_GetAllCoursesByDept value)? getAllCoursesByDept,
    TResult Function(_CreateCourse value)? createCourse,
    TResult Function(_SubmitUser value)? submitUser,
    required TResult orElse(),
  }) {
    if (getAllLectures != null) {
      return getAllLectures(this);
    }
    return orElse();
  }
}

abstract class _GetAllLectures implements LectureEvent {
  const factory _GetAllLectures() = _$GetAllLecturesImpl;
}

/// @nodoc
abstract class _$$GetAllLecturesByCourseImplCopyWith<$Res> {
  factory _$$GetAllLecturesByCourseImplCopyWith(
          _$GetAllLecturesByCourseImpl value,
          $Res Function(_$GetAllLecturesByCourseImpl) then) =
      __$$GetAllLecturesByCourseImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String courseTitle});
}

/// @nodoc
class __$$GetAllLecturesByCourseImplCopyWithImpl<$Res>
    extends _$LectureEventCopyWithImpl<$Res, _$GetAllLecturesByCourseImpl>
    implements _$$GetAllLecturesByCourseImplCopyWith<$Res> {
  __$$GetAllLecturesByCourseImplCopyWithImpl(
      _$GetAllLecturesByCourseImpl _value,
      $Res Function(_$GetAllLecturesByCourseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courseTitle = null,
  }) {
    return _then(_$GetAllLecturesByCourseImpl(
      courseTitle: null == courseTitle
          ? _value.courseTitle
          : courseTitle // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetAllLecturesByCourseImpl implements _GetAllLecturesByCourse {
  const _$GetAllLecturesByCourseImpl({required this.courseTitle});

  @override
  final String courseTitle;

  @override
  String toString() {
    return 'LectureEvent.getAllLecturesByCourse(courseTitle: $courseTitle)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAllLecturesByCourseImpl &&
            (identical(other.courseTitle, courseTitle) ||
                other.courseTitle == courseTitle));
  }

  @override
  int get hashCode => Object.hash(runtimeType, courseTitle);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAllLecturesByCourseImplCopyWith<_$GetAllLecturesByCourseImpl>
      get copyWith => __$$GetAllLecturesByCourseImplCopyWithImpl<
          _$GetAllLecturesByCourseImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() selectFile,
    required TResult Function(
            String fileUrl, String courseTitle, String lectureTitle)
        downloadLecture,
    required TResult Function(UserModel user, String title, String courseTitle,
            String? description)
        uploadLecture,
    required TResult Function() getAllLectures,
    required TResult Function(String courseTitle) getAllLecturesByCourse,
    required TResult Function(String courseDept) getAllCoursesByDept,
    required TResult Function(String courseTitle, String userDept) createCourse,
    required TResult Function(
            String userId, String courseTitle, String lectureTitle)
        submitUser,
  }) {
    return getAllLecturesByCourse(courseTitle);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? selectFile,
    TResult? Function(String fileUrl, String courseTitle, String lectureTitle)?
        downloadLecture,
    TResult? Function(UserModel user, String title, String courseTitle,
            String? description)?
        uploadLecture,
    TResult? Function()? getAllLectures,
    TResult? Function(String courseTitle)? getAllLecturesByCourse,
    TResult? Function(String courseDept)? getAllCoursesByDept,
    TResult? Function(String courseTitle, String userDept)? createCourse,
    TResult? Function(String userId, String courseTitle, String lectureTitle)?
        submitUser,
  }) {
    return getAllLecturesByCourse?.call(courseTitle);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? selectFile,
    TResult Function(String fileUrl, String courseTitle, String lectureTitle)?
        downloadLecture,
    TResult Function(UserModel user, String title, String courseTitle,
            String? description)?
        uploadLecture,
    TResult Function()? getAllLectures,
    TResult Function(String courseTitle)? getAllLecturesByCourse,
    TResult Function(String courseDept)? getAllCoursesByDept,
    TResult Function(String courseTitle, String userDept)? createCourse,
    TResult Function(String userId, String courseTitle, String lectureTitle)?
        submitUser,
    required TResult orElse(),
  }) {
    if (getAllLecturesByCourse != null) {
      return getAllLecturesByCourse(courseTitle);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SelectFile value) selectFile,
    required TResult Function(_DownloadLecture value) downloadLecture,
    required TResult Function(_UploadLecture value) uploadLecture,
    required TResult Function(_GetAllLectures value) getAllLectures,
    required TResult Function(_GetAllLecturesByCourse value)
        getAllLecturesByCourse,
    required TResult Function(_GetAllCoursesByDept value) getAllCoursesByDept,
    required TResult Function(_CreateCourse value) createCourse,
    required TResult Function(_SubmitUser value) submitUser,
  }) {
    return getAllLecturesByCourse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SelectFile value)? selectFile,
    TResult? Function(_DownloadLecture value)? downloadLecture,
    TResult? Function(_UploadLecture value)? uploadLecture,
    TResult? Function(_GetAllLectures value)? getAllLectures,
    TResult? Function(_GetAllLecturesByCourse value)? getAllLecturesByCourse,
    TResult? Function(_GetAllCoursesByDept value)? getAllCoursesByDept,
    TResult? Function(_CreateCourse value)? createCourse,
    TResult? Function(_SubmitUser value)? submitUser,
  }) {
    return getAllLecturesByCourse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SelectFile value)? selectFile,
    TResult Function(_DownloadLecture value)? downloadLecture,
    TResult Function(_UploadLecture value)? uploadLecture,
    TResult Function(_GetAllLectures value)? getAllLectures,
    TResult Function(_GetAllLecturesByCourse value)? getAllLecturesByCourse,
    TResult Function(_GetAllCoursesByDept value)? getAllCoursesByDept,
    TResult Function(_CreateCourse value)? createCourse,
    TResult Function(_SubmitUser value)? submitUser,
    required TResult orElse(),
  }) {
    if (getAllLecturesByCourse != null) {
      return getAllLecturesByCourse(this);
    }
    return orElse();
  }
}

abstract class _GetAllLecturesByCourse implements LectureEvent {
  const factory _GetAllLecturesByCourse({required final String courseTitle}) =
      _$GetAllLecturesByCourseImpl;

  String get courseTitle;
  @JsonKey(ignore: true)
  _$$GetAllLecturesByCourseImplCopyWith<_$GetAllLecturesByCourseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetAllCoursesByDeptImplCopyWith<$Res> {
  factory _$$GetAllCoursesByDeptImplCopyWith(_$GetAllCoursesByDeptImpl value,
          $Res Function(_$GetAllCoursesByDeptImpl) then) =
      __$$GetAllCoursesByDeptImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String courseDept});
}

/// @nodoc
class __$$GetAllCoursesByDeptImplCopyWithImpl<$Res>
    extends _$LectureEventCopyWithImpl<$Res, _$GetAllCoursesByDeptImpl>
    implements _$$GetAllCoursesByDeptImplCopyWith<$Res> {
  __$$GetAllCoursesByDeptImplCopyWithImpl(_$GetAllCoursesByDeptImpl _value,
      $Res Function(_$GetAllCoursesByDeptImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courseDept = null,
  }) {
    return _then(_$GetAllCoursesByDeptImpl(
      courseDept: null == courseDept
          ? _value.courseDept
          : courseDept // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetAllCoursesByDeptImpl implements _GetAllCoursesByDept {
  const _$GetAllCoursesByDeptImpl({required this.courseDept});

  @override
  final String courseDept;

  @override
  String toString() {
    return 'LectureEvent.getAllCoursesByDept(courseDept: $courseDept)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAllCoursesByDeptImpl &&
            (identical(other.courseDept, courseDept) ||
                other.courseDept == courseDept));
  }

  @override
  int get hashCode => Object.hash(runtimeType, courseDept);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAllCoursesByDeptImplCopyWith<_$GetAllCoursesByDeptImpl> get copyWith =>
      __$$GetAllCoursesByDeptImplCopyWithImpl<_$GetAllCoursesByDeptImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() selectFile,
    required TResult Function(
            String fileUrl, String courseTitle, String lectureTitle)
        downloadLecture,
    required TResult Function(UserModel user, String title, String courseTitle,
            String? description)
        uploadLecture,
    required TResult Function() getAllLectures,
    required TResult Function(String courseTitle) getAllLecturesByCourse,
    required TResult Function(String courseDept) getAllCoursesByDept,
    required TResult Function(String courseTitle, String userDept) createCourse,
    required TResult Function(
            String userId, String courseTitle, String lectureTitle)
        submitUser,
  }) {
    return getAllCoursesByDept(courseDept);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? selectFile,
    TResult? Function(String fileUrl, String courseTitle, String lectureTitle)?
        downloadLecture,
    TResult? Function(UserModel user, String title, String courseTitle,
            String? description)?
        uploadLecture,
    TResult? Function()? getAllLectures,
    TResult? Function(String courseTitle)? getAllLecturesByCourse,
    TResult? Function(String courseDept)? getAllCoursesByDept,
    TResult? Function(String courseTitle, String userDept)? createCourse,
    TResult? Function(String userId, String courseTitle, String lectureTitle)?
        submitUser,
  }) {
    return getAllCoursesByDept?.call(courseDept);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? selectFile,
    TResult Function(String fileUrl, String courseTitle, String lectureTitle)?
        downloadLecture,
    TResult Function(UserModel user, String title, String courseTitle,
            String? description)?
        uploadLecture,
    TResult Function()? getAllLectures,
    TResult Function(String courseTitle)? getAllLecturesByCourse,
    TResult Function(String courseDept)? getAllCoursesByDept,
    TResult Function(String courseTitle, String userDept)? createCourse,
    TResult Function(String userId, String courseTitle, String lectureTitle)?
        submitUser,
    required TResult orElse(),
  }) {
    if (getAllCoursesByDept != null) {
      return getAllCoursesByDept(courseDept);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SelectFile value) selectFile,
    required TResult Function(_DownloadLecture value) downloadLecture,
    required TResult Function(_UploadLecture value) uploadLecture,
    required TResult Function(_GetAllLectures value) getAllLectures,
    required TResult Function(_GetAllLecturesByCourse value)
        getAllLecturesByCourse,
    required TResult Function(_GetAllCoursesByDept value) getAllCoursesByDept,
    required TResult Function(_CreateCourse value) createCourse,
    required TResult Function(_SubmitUser value) submitUser,
  }) {
    return getAllCoursesByDept(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SelectFile value)? selectFile,
    TResult? Function(_DownloadLecture value)? downloadLecture,
    TResult? Function(_UploadLecture value)? uploadLecture,
    TResult? Function(_GetAllLectures value)? getAllLectures,
    TResult? Function(_GetAllLecturesByCourse value)? getAllLecturesByCourse,
    TResult? Function(_GetAllCoursesByDept value)? getAllCoursesByDept,
    TResult? Function(_CreateCourse value)? createCourse,
    TResult? Function(_SubmitUser value)? submitUser,
  }) {
    return getAllCoursesByDept?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SelectFile value)? selectFile,
    TResult Function(_DownloadLecture value)? downloadLecture,
    TResult Function(_UploadLecture value)? uploadLecture,
    TResult Function(_GetAllLectures value)? getAllLectures,
    TResult Function(_GetAllLecturesByCourse value)? getAllLecturesByCourse,
    TResult Function(_GetAllCoursesByDept value)? getAllCoursesByDept,
    TResult Function(_CreateCourse value)? createCourse,
    TResult Function(_SubmitUser value)? submitUser,
    required TResult orElse(),
  }) {
    if (getAllCoursesByDept != null) {
      return getAllCoursesByDept(this);
    }
    return orElse();
  }
}

abstract class _GetAllCoursesByDept implements LectureEvent {
  const factory _GetAllCoursesByDept({required final String courseDept}) =
      _$GetAllCoursesByDeptImpl;

  String get courseDept;
  @JsonKey(ignore: true)
  _$$GetAllCoursesByDeptImplCopyWith<_$GetAllCoursesByDeptImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateCourseImplCopyWith<$Res> {
  factory _$$CreateCourseImplCopyWith(
          _$CreateCourseImpl value, $Res Function(_$CreateCourseImpl) then) =
      __$$CreateCourseImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String courseTitle, String userDept});
}

/// @nodoc
class __$$CreateCourseImplCopyWithImpl<$Res>
    extends _$LectureEventCopyWithImpl<$Res, _$CreateCourseImpl>
    implements _$$CreateCourseImplCopyWith<$Res> {
  __$$CreateCourseImplCopyWithImpl(
      _$CreateCourseImpl _value, $Res Function(_$CreateCourseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courseTitle = null,
    Object? userDept = null,
  }) {
    return _then(_$CreateCourseImpl(
      courseTitle: null == courseTitle
          ? _value.courseTitle
          : courseTitle // ignore: cast_nullable_to_non_nullable
              as String,
      userDept: null == userDept
          ? _value.userDept
          : userDept // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CreateCourseImpl implements _CreateCourse {
  const _$CreateCourseImpl({required this.courseTitle, required this.userDept});

  @override
  final String courseTitle;
  @override
  final String userDept;

  @override
  String toString() {
    return 'LectureEvent.createCourse(courseTitle: $courseTitle, userDept: $userDept)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateCourseImpl &&
            (identical(other.courseTitle, courseTitle) ||
                other.courseTitle == courseTitle) &&
            (identical(other.userDept, userDept) ||
                other.userDept == userDept));
  }

  @override
  int get hashCode => Object.hash(runtimeType, courseTitle, userDept);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateCourseImplCopyWith<_$CreateCourseImpl> get copyWith =>
      __$$CreateCourseImplCopyWithImpl<_$CreateCourseImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() selectFile,
    required TResult Function(
            String fileUrl, String courseTitle, String lectureTitle)
        downloadLecture,
    required TResult Function(UserModel user, String title, String courseTitle,
            String? description)
        uploadLecture,
    required TResult Function() getAllLectures,
    required TResult Function(String courseTitle) getAllLecturesByCourse,
    required TResult Function(String courseDept) getAllCoursesByDept,
    required TResult Function(String courseTitle, String userDept) createCourse,
    required TResult Function(
            String userId, String courseTitle, String lectureTitle)
        submitUser,
  }) {
    return createCourse(courseTitle, userDept);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? selectFile,
    TResult? Function(String fileUrl, String courseTitle, String lectureTitle)?
        downloadLecture,
    TResult? Function(UserModel user, String title, String courseTitle,
            String? description)?
        uploadLecture,
    TResult? Function()? getAllLectures,
    TResult? Function(String courseTitle)? getAllLecturesByCourse,
    TResult? Function(String courseDept)? getAllCoursesByDept,
    TResult? Function(String courseTitle, String userDept)? createCourse,
    TResult? Function(String userId, String courseTitle, String lectureTitle)?
        submitUser,
  }) {
    return createCourse?.call(courseTitle, userDept);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? selectFile,
    TResult Function(String fileUrl, String courseTitle, String lectureTitle)?
        downloadLecture,
    TResult Function(UserModel user, String title, String courseTitle,
            String? description)?
        uploadLecture,
    TResult Function()? getAllLectures,
    TResult Function(String courseTitle)? getAllLecturesByCourse,
    TResult Function(String courseDept)? getAllCoursesByDept,
    TResult Function(String courseTitle, String userDept)? createCourse,
    TResult Function(String userId, String courseTitle, String lectureTitle)?
        submitUser,
    required TResult orElse(),
  }) {
    if (createCourse != null) {
      return createCourse(courseTitle, userDept);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SelectFile value) selectFile,
    required TResult Function(_DownloadLecture value) downloadLecture,
    required TResult Function(_UploadLecture value) uploadLecture,
    required TResult Function(_GetAllLectures value) getAllLectures,
    required TResult Function(_GetAllLecturesByCourse value)
        getAllLecturesByCourse,
    required TResult Function(_GetAllCoursesByDept value) getAllCoursesByDept,
    required TResult Function(_CreateCourse value) createCourse,
    required TResult Function(_SubmitUser value) submitUser,
  }) {
    return createCourse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SelectFile value)? selectFile,
    TResult? Function(_DownloadLecture value)? downloadLecture,
    TResult? Function(_UploadLecture value)? uploadLecture,
    TResult? Function(_GetAllLectures value)? getAllLectures,
    TResult? Function(_GetAllLecturesByCourse value)? getAllLecturesByCourse,
    TResult? Function(_GetAllCoursesByDept value)? getAllCoursesByDept,
    TResult? Function(_CreateCourse value)? createCourse,
    TResult? Function(_SubmitUser value)? submitUser,
  }) {
    return createCourse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SelectFile value)? selectFile,
    TResult Function(_DownloadLecture value)? downloadLecture,
    TResult Function(_UploadLecture value)? uploadLecture,
    TResult Function(_GetAllLectures value)? getAllLectures,
    TResult Function(_GetAllLecturesByCourse value)? getAllLecturesByCourse,
    TResult Function(_GetAllCoursesByDept value)? getAllCoursesByDept,
    TResult Function(_CreateCourse value)? createCourse,
    TResult Function(_SubmitUser value)? submitUser,
    required TResult orElse(),
  }) {
    if (createCourse != null) {
      return createCourse(this);
    }
    return orElse();
  }
}

abstract class _CreateCourse implements LectureEvent {
  const factory _CreateCourse(
      {required final String courseTitle,
      required final String userDept}) = _$CreateCourseImpl;

  String get courseTitle;
  String get userDept;
  @JsonKey(ignore: true)
  _$$CreateCourseImplCopyWith<_$CreateCourseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SubmitUserImplCopyWith<$Res> {
  factory _$$SubmitUserImplCopyWith(
          _$SubmitUserImpl value, $Res Function(_$SubmitUserImpl) then) =
      __$$SubmitUserImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userId, String courseTitle, String lectureTitle});
}

/// @nodoc
class __$$SubmitUserImplCopyWithImpl<$Res>
    extends _$LectureEventCopyWithImpl<$Res, _$SubmitUserImpl>
    implements _$$SubmitUserImplCopyWith<$Res> {
  __$$SubmitUserImplCopyWithImpl(
      _$SubmitUserImpl _value, $Res Function(_$SubmitUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? courseTitle = null,
    Object? lectureTitle = null,
  }) {
    return _then(_$SubmitUserImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      courseTitle: null == courseTitle
          ? _value.courseTitle
          : courseTitle // ignore: cast_nullable_to_non_nullable
              as String,
      lectureTitle: null == lectureTitle
          ? _value.lectureTitle
          : lectureTitle // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SubmitUserImpl implements _SubmitUser {
  const _$SubmitUserImpl(
      {required this.userId,
      required this.courseTitle,
      required this.lectureTitle});

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmitUserImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.courseTitle, courseTitle) ||
                other.courseTitle == courseTitle) &&
            (identical(other.lectureTitle, lectureTitle) ||
                other.lectureTitle == lectureTitle));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, userId, courseTitle, lectureTitle);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubmitUserImplCopyWith<_$SubmitUserImpl> get copyWith =>
      __$$SubmitUserImplCopyWithImpl<_$SubmitUserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() selectFile,
    required TResult Function(
            String fileUrl, String courseTitle, String lectureTitle)
        downloadLecture,
    required TResult Function(UserModel user, String title, String courseTitle,
            String? description)
        uploadLecture,
    required TResult Function() getAllLectures,
    required TResult Function(String courseTitle) getAllLecturesByCourse,
    required TResult Function(String courseDept) getAllCoursesByDept,
    required TResult Function(String courseTitle, String userDept) createCourse,
    required TResult Function(
            String userId, String courseTitle, String lectureTitle)
        submitUser,
  }) {
    return submitUser(userId, courseTitle, lectureTitle);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? selectFile,
    TResult? Function(String fileUrl, String courseTitle, String lectureTitle)?
        downloadLecture,
    TResult? Function(UserModel user, String title, String courseTitle,
            String? description)?
        uploadLecture,
    TResult? Function()? getAllLectures,
    TResult? Function(String courseTitle)? getAllLecturesByCourse,
    TResult? Function(String courseDept)? getAllCoursesByDept,
    TResult? Function(String courseTitle, String userDept)? createCourse,
    TResult? Function(String userId, String courseTitle, String lectureTitle)?
        submitUser,
  }) {
    return submitUser?.call(userId, courseTitle, lectureTitle);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? selectFile,
    TResult Function(String fileUrl, String courseTitle, String lectureTitle)?
        downloadLecture,
    TResult Function(UserModel user, String title, String courseTitle,
            String? description)?
        uploadLecture,
    TResult Function()? getAllLectures,
    TResult Function(String courseTitle)? getAllLecturesByCourse,
    TResult Function(String courseDept)? getAllCoursesByDept,
    TResult Function(String courseTitle, String userDept)? createCourse,
    TResult Function(String userId, String courseTitle, String lectureTitle)?
        submitUser,
    required TResult orElse(),
  }) {
    if (submitUser != null) {
      return submitUser(userId, courseTitle, lectureTitle);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SelectFile value) selectFile,
    required TResult Function(_DownloadLecture value) downloadLecture,
    required TResult Function(_UploadLecture value) uploadLecture,
    required TResult Function(_GetAllLectures value) getAllLectures,
    required TResult Function(_GetAllLecturesByCourse value)
        getAllLecturesByCourse,
    required TResult Function(_GetAllCoursesByDept value) getAllCoursesByDept,
    required TResult Function(_CreateCourse value) createCourse,
    required TResult Function(_SubmitUser value) submitUser,
  }) {
    return submitUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SelectFile value)? selectFile,
    TResult? Function(_DownloadLecture value)? downloadLecture,
    TResult? Function(_UploadLecture value)? uploadLecture,
    TResult? Function(_GetAllLectures value)? getAllLectures,
    TResult? Function(_GetAllLecturesByCourse value)? getAllLecturesByCourse,
    TResult? Function(_GetAllCoursesByDept value)? getAllCoursesByDept,
    TResult? Function(_CreateCourse value)? createCourse,
    TResult? Function(_SubmitUser value)? submitUser,
  }) {
    return submitUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SelectFile value)? selectFile,
    TResult Function(_DownloadLecture value)? downloadLecture,
    TResult Function(_UploadLecture value)? uploadLecture,
    TResult Function(_GetAllLectures value)? getAllLectures,
    TResult Function(_GetAllLecturesByCourse value)? getAllLecturesByCourse,
    TResult Function(_GetAllCoursesByDept value)? getAllCoursesByDept,
    TResult Function(_CreateCourse value)? createCourse,
    TResult Function(_SubmitUser value)? submitUser,
    required TResult orElse(),
  }) {
    if (submitUser != null) {
      return submitUser(this);
    }
    return orElse();
  }
}

abstract class _SubmitUser implements LectureEvent {
  const factory _SubmitUser(
      {required final String userId,
      required final String courseTitle,
      required final String lectureTitle}) = _$SubmitUserImpl;

  String get userId;
  String get courseTitle;
  String get lectureTitle;
  @JsonKey(ignore: true)
  _$$SubmitUserImplCopyWith<_$SubmitUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LectureState {
  LectureEntity get lecture => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get filePath => throw _privateConstructorUsedError;
  String get fileName => throw _privateConstructorUsedError;
  bool? get isSubmitting => throw _privateConstructorUsedError;
  List<LectureEntity> get lectures => throw _privateConstructorUsedError;
  List<String> get courseIds => throw _privateConstructorUsedError;
  Option<Either<LectureFailure, Unit>> get lectureFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LectureStateCopyWith<LectureState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LectureStateCopyWith<$Res> {
  factory $LectureStateCopyWith(
          LectureState value, $Res Function(LectureState) then) =
      _$LectureStateCopyWithImpl<$Res, LectureState>;
  @useResult
  $Res call(
      {LectureEntity lecture,
      String userId,
      String filePath,
      String fileName,
      bool? isSubmitting,
      List<LectureEntity> lectures,
      List<String> courseIds,
      Option<Either<LectureFailure, Unit>> lectureFailureOrSuccessOption});
}

/// @nodoc
class _$LectureStateCopyWithImpl<$Res, $Val extends LectureState>
    implements $LectureStateCopyWith<$Res> {
  _$LectureStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lecture = null,
    Object? userId = null,
    Object? filePath = null,
    Object? fileName = null,
    Object? isSubmitting = freezed,
    Object? lectures = null,
    Object? courseIds = null,
    Object? lectureFailureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      lecture: null == lecture
          ? _value.lecture
          : lecture // ignore: cast_nullable_to_non_nullable
              as LectureEntity,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      filePath: null == filePath
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String,
      fileName: null == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
      isSubmitting: freezed == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool?,
      lectures: null == lectures
          ? _value.lectures
          : lectures // ignore: cast_nullable_to_non_nullable
              as List<LectureEntity>,
      courseIds: null == courseIds
          ? _value.courseIds
          : courseIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      lectureFailureOrSuccessOption: null == lectureFailureOrSuccessOption
          ? _value.lectureFailureOrSuccessOption
          : lectureFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<LectureFailure, Unit>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LectureStateImplCopyWith<$Res>
    implements $LectureStateCopyWith<$Res> {
  factory _$$LectureStateImplCopyWith(
          _$LectureStateImpl value, $Res Function(_$LectureStateImpl) then) =
      __$$LectureStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {LectureEntity lecture,
      String userId,
      String filePath,
      String fileName,
      bool? isSubmitting,
      List<LectureEntity> lectures,
      List<String> courseIds,
      Option<Either<LectureFailure, Unit>> lectureFailureOrSuccessOption});
}

/// @nodoc
class __$$LectureStateImplCopyWithImpl<$Res>
    extends _$LectureStateCopyWithImpl<$Res, _$LectureStateImpl>
    implements _$$LectureStateImplCopyWith<$Res> {
  __$$LectureStateImplCopyWithImpl(
      _$LectureStateImpl _value, $Res Function(_$LectureStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lecture = null,
    Object? userId = null,
    Object? filePath = null,
    Object? fileName = null,
    Object? isSubmitting = freezed,
    Object? lectures = null,
    Object? courseIds = null,
    Object? lectureFailureOrSuccessOption = null,
  }) {
    return _then(_$LectureStateImpl(
      lecture: null == lecture
          ? _value.lecture
          : lecture // ignore: cast_nullable_to_non_nullable
              as LectureEntity,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      filePath: null == filePath
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String,
      fileName: null == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
      isSubmitting: freezed == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool?,
      lectures: null == lectures
          ? _value._lectures
          : lectures // ignore: cast_nullable_to_non_nullable
              as List<LectureEntity>,
      courseIds: null == courseIds
          ? _value._courseIds
          : courseIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      lectureFailureOrSuccessOption: null == lectureFailureOrSuccessOption
          ? _value.lectureFailureOrSuccessOption
          : lectureFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<LectureFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$LectureStateImpl implements _LectureState {
  const _$LectureStateImpl(
      {required this.lecture,
      required this.userId,
      required this.filePath,
      required this.fileName,
      required this.isSubmitting,
      required final List<LectureEntity> lectures,
      required final List<String> courseIds,
      required this.lectureFailureOrSuccessOption})
      : _lectures = lectures,
        _courseIds = courseIds;

  @override
  final LectureEntity lecture;
  @override
  final String userId;
  @override
  final String filePath;
  @override
  final String fileName;
  @override
  final bool? isSubmitting;
  final List<LectureEntity> _lectures;
  @override
  List<LectureEntity> get lectures {
    if (_lectures is EqualUnmodifiableListView) return _lectures;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lectures);
  }

  final List<String> _courseIds;
  @override
  List<String> get courseIds {
    if (_courseIds is EqualUnmodifiableListView) return _courseIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_courseIds);
  }

  @override
  final Option<Either<LectureFailure, Unit>> lectureFailureOrSuccessOption;

  @override
  String toString() {
    return 'LectureState(lecture: $lecture, userId: $userId, filePath: $filePath, fileName: $fileName, isSubmitting: $isSubmitting, lectures: $lectures, courseIds: $courseIds, lectureFailureOrSuccessOption: $lectureFailureOrSuccessOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LectureStateImpl &&
            (identical(other.lecture, lecture) || other.lecture == lecture) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.filePath, filePath) ||
                other.filePath == filePath) &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            const DeepCollectionEquality().equals(other._lectures, _lectures) &&
            const DeepCollectionEquality()
                .equals(other._courseIds, _courseIds) &&
            (identical(other.lectureFailureOrSuccessOption,
                    lectureFailureOrSuccessOption) ||
                other.lectureFailureOrSuccessOption ==
                    lectureFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      lecture,
      userId,
      filePath,
      fileName,
      isSubmitting,
      const DeepCollectionEquality().hash(_lectures),
      const DeepCollectionEquality().hash(_courseIds),
      lectureFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LectureStateImplCopyWith<_$LectureStateImpl> get copyWith =>
      __$$LectureStateImplCopyWithImpl<_$LectureStateImpl>(this, _$identity);
}

abstract class _LectureState implements LectureState {
  const factory _LectureState(
      {required final LectureEntity lecture,
      required final String userId,
      required final String filePath,
      required final String fileName,
      required final bool? isSubmitting,
      required final List<LectureEntity> lectures,
      required final List<String> courseIds,
      required final Option<Either<LectureFailure, Unit>>
          lectureFailureOrSuccessOption}) = _$LectureStateImpl;

  @override
  LectureEntity get lecture;
  @override
  String get userId;
  @override
  String get filePath;
  @override
  String get fileName;
  @override
  bool? get isSubmitting;
  @override
  List<LectureEntity> get lectures;
  @override
  List<String> get courseIds;
  @override
  Option<Either<LectureFailure, Unit>> get lectureFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$LectureStateImplCopyWith<_$LectureStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
