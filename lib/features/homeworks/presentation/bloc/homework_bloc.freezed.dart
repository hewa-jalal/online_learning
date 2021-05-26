// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'homework_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HomeworkEventTearOff {
  const _$HomeworkEventTearOff();

  _Started started() {
    return const _Started();
  }

  _UploadHomework uploadHomework(
      {required UserModel user,
      required String title,
      required String courseTitle,
      required String filePath,
      required int dueDate,
      String? description}) {
    return _UploadHomework(
      user: user,
      title: title,
      courseTitle: courseTitle,
      filePath: filePath,
      dueDate: dueDate,
      description: description,
    );
  }

  _SelectFile selectFile() {
    return const _SelectFile();
  }

  _GetAllHomeworksByCourse getAllHomeworksByCourse(
      {required String courseTitle}) {
    return _GetAllHomeworksByCourse(
      courseTitle: courseTitle,
    );
  }

  _GetSubmittedHomework getSubmittedHomework(
      {required String courseTitle,
      required String homeworkTitle,
      required String userId}) {
    return _GetSubmittedHomework(
      courseTitle: courseTitle,
      homeworkTitle: homeworkTitle,
      userId: userId,
    );
  }

  _SubmitHomework submitHomework(
      {required String userId,
      required String courseTitle,
      required String homeworkTitle,
      String? note,
      int? submitDate}) {
    return _SubmitHomework(
      userId: userId,
      courseTitle: courseTitle,
      homeworkTitle: homeworkTitle,
      note: note,
      submitDate: submitDate,
    );
  }
}

/// @nodoc
const $HomeworkEvent = _$HomeworkEventTearOff();

/// @nodoc
mixin _$HomeworkEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(UserModel user, String title, String courseTitle,
            String filePath, int dueDate, String? description)
        uploadHomework,
    required TResult Function() selectFile,
    required TResult Function(String courseTitle) getAllHomeworksByCourse,
    required TResult Function(
            String courseTitle, String homeworkTitle, String userId)
        getSubmittedHomework,
    required TResult Function(String userId, String courseTitle,
            String homeworkTitle, String? note, int? submitDate)
        submitHomework,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(UserModel user, String title, String courseTitle,
            String filePath, int dueDate, String? description)?
        uploadHomework,
    TResult Function()? selectFile,
    TResult Function(String courseTitle)? getAllHomeworksByCourse,
    TResult Function(String courseTitle, String homeworkTitle, String userId)?
        getSubmittedHomework,
    TResult Function(String userId, String courseTitle, String homeworkTitle,
            String? note, int? submitDate)?
        submitHomework,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_UploadHomework value) uploadHomework,
    required TResult Function(_SelectFile value) selectFile,
    required TResult Function(_GetAllHomeworksByCourse value)
        getAllHomeworksByCourse,
    required TResult Function(_GetSubmittedHomework value) getSubmittedHomework,
    required TResult Function(_SubmitHomework value) submitHomework,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UploadHomework value)? uploadHomework,
    TResult Function(_SelectFile value)? selectFile,
    TResult Function(_GetAllHomeworksByCourse value)? getAllHomeworksByCourse,
    TResult Function(_GetSubmittedHomework value)? getSubmittedHomework,
    TResult Function(_SubmitHomework value)? submitHomework,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeworkEventCopyWith<$Res> {
  factory $HomeworkEventCopyWith(
          HomeworkEvent value, $Res Function(HomeworkEvent) then) =
      _$HomeworkEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeworkEventCopyWithImpl<$Res>
    implements $HomeworkEventCopyWith<$Res> {
  _$HomeworkEventCopyWithImpl(this._value, this._then);

  final HomeworkEvent _value;
  // ignore: unused_field
  final $Res Function(HomeworkEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$HomeworkEventCopyWithImpl<$Res>
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
    return 'HomeworkEvent.started()';
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
    required TResult Function(UserModel user, String title, String courseTitle,
            String filePath, int dueDate, String? description)
        uploadHomework,
    required TResult Function() selectFile,
    required TResult Function(String courseTitle) getAllHomeworksByCourse,
    required TResult Function(
            String courseTitle, String homeworkTitle, String userId)
        getSubmittedHomework,
    required TResult Function(String userId, String courseTitle,
            String homeworkTitle, String? note, int? submitDate)
        submitHomework,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(UserModel user, String title, String courseTitle,
            String filePath, int dueDate, String? description)?
        uploadHomework,
    TResult Function()? selectFile,
    TResult Function(String courseTitle)? getAllHomeworksByCourse,
    TResult Function(String courseTitle, String homeworkTitle, String userId)?
        getSubmittedHomework,
    TResult Function(String userId, String courseTitle, String homeworkTitle,
            String? note, int? submitDate)?
        submitHomework,
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
    required TResult Function(_UploadHomework value) uploadHomework,
    required TResult Function(_SelectFile value) selectFile,
    required TResult Function(_GetAllHomeworksByCourse value)
        getAllHomeworksByCourse,
    required TResult Function(_GetSubmittedHomework value) getSubmittedHomework,
    required TResult Function(_SubmitHomework value) submitHomework,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UploadHomework value)? uploadHomework,
    TResult Function(_SelectFile value)? selectFile,
    TResult Function(_GetAllHomeworksByCourse value)? getAllHomeworksByCourse,
    TResult Function(_GetSubmittedHomework value)? getSubmittedHomework,
    TResult Function(_SubmitHomework value)? submitHomework,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements HomeworkEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$UploadHomeworkCopyWith<$Res> {
  factory _$UploadHomeworkCopyWith(
          _UploadHomework value, $Res Function(_UploadHomework) then) =
      __$UploadHomeworkCopyWithImpl<$Res>;
  $Res call(
      {UserModel user,
      String title,
      String courseTitle,
      String filePath,
      int dueDate,
      String? description});
}

/// @nodoc
class __$UploadHomeworkCopyWithImpl<$Res>
    extends _$HomeworkEventCopyWithImpl<$Res>
    implements _$UploadHomeworkCopyWith<$Res> {
  __$UploadHomeworkCopyWithImpl(
      _UploadHomework _value, $Res Function(_UploadHomework) _then)
      : super(_value, (v) => _then(v as _UploadHomework));

  @override
  _UploadHomework get _value => super._value as _UploadHomework;

  @override
  $Res call({
    Object? user = freezed,
    Object? title = freezed,
    Object? courseTitle = freezed,
    Object? filePath = freezed,
    Object? dueDate = freezed,
    Object? description = freezed,
  }) {
    return _then(_UploadHomework(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      courseTitle: courseTitle == freezed
          ? _value.courseTitle
          : courseTitle // ignore: cast_nullable_to_non_nullable
              as String,
      filePath: filePath == freezed
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String,
      dueDate: dueDate == freezed
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as int,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_UploadHomework implements _UploadHomework {
  const _$_UploadHomework(
      {required this.user,
      required this.title,
      required this.courseTitle,
      required this.filePath,
      required this.dueDate,
      this.description});

  @override
  final UserModel user;
  @override
  final String title;
  @override
  final String courseTitle;
  @override
  final String filePath;
  @override
  final int dueDate;
  @override
  final String? description;

  @override
  String toString() {
    return 'HomeworkEvent.uploadHomework(user: $user, title: $title, courseTitle: $courseTitle, filePath: $filePath, dueDate: $dueDate, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UploadHomework &&
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
            (identical(other.dueDate, dueDate) ||
                const DeepCollectionEquality()
                    .equals(other.dueDate, dueDate)) &&
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
      const DeepCollectionEquality().hash(dueDate) ^
      const DeepCollectionEquality().hash(description);

  @JsonKey(ignore: true)
  @override
  _$UploadHomeworkCopyWith<_UploadHomework> get copyWith =>
      __$UploadHomeworkCopyWithImpl<_UploadHomework>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(UserModel user, String title, String courseTitle,
            String filePath, int dueDate, String? description)
        uploadHomework,
    required TResult Function() selectFile,
    required TResult Function(String courseTitle) getAllHomeworksByCourse,
    required TResult Function(
            String courseTitle, String homeworkTitle, String userId)
        getSubmittedHomework,
    required TResult Function(String userId, String courseTitle,
            String homeworkTitle, String? note, int? submitDate)
        submitHomework,
  }) {
    return uploadHomework(
        user, title, courseTitle, filePath, dueDate, description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(UserModel user, String title, String courseTitle,
            String filePath, int dueDate, String? description)?
        uploadHomework,
    TResult Function()? selectFile,
    TResult Function(String courseTitle)? getAllHomeworksByCourse,
    TResult Function(String courseTitle, String homeworkTitle, String userId)?
        getSubmittedHomework,
    TResult Function(String userId, String courseTitle, String homeworkTitle,
            String? note, int? submitDate)?
        submitHomework,
    required TResult orElse(),
  }) {
    if (uploadHomework != null) {
      return uploadHomework(
          user, title, courseTitle, filePath, dueDate, description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_UploadHomework value) uploadHomework,
    required TResult Function(_SelectFile value) selectFile,
    required TResult Function(_GetAllHomeworksByCourse value)
        getAllHomeworksByCourse,
    required TResult Function(_GetSubmittedHomework value) getSubmittedHomework,
    required TResult Function(_SubmitHomework value) submitHomework,
  }) {
    return uploadHomework(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UploadHomework value)? uploadHomework,
    TResult Function(_SelectFile value)? selectFile,
    TResult Function(_GetAllHomeworksByCourse value)? getAllHomeworksByCourse,
    TResult Function(_GetSubmittedHomework value)? getSubmittedHomework,
    TResult Function(_SubmitHomework value)? submitHomework,
    required TResult orElse(),
  }) {
    if (uploadHomework != null) {
      return uploadHomework(this);
    }
    return orElse();
  }
}

abstract class _UploadHomework implements HomeworkEvent {
  const factory _UploadHomework(
      {required UserModel user,
      required String title,
      required String courseTitle,
      required String filePath,
      required int dueDate,
      String? description}) = _$_UploadHomework;

  UserModel get user => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get courseTitle => throw _privateConstructorUsedError;
  String get filePath => throw _privateConstructorUsedError;
  int get dueDate => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$UploadHomeworkCopyWith<_UploadHomework> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SelectFileCopyWith<$Res> {
  factory _$SelectFileCopyWith(
          _SelectFile value, $Res Function(_SelectFile) then) =
      __$SelectFileCopyWithImpl<$Res>;
}

/// @nodoc
class __$SelectFileCopyWithImpl<$Res> extends _$HomeworkEventCopyWithImpl<$Res>
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
    return 'HomeworkEvent.selectFile()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SelectFile);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(UserModel user, String title, String courseTitle,
            String filePath, int dueDate, String? description)
        uploadHomework,
    required TResult Function() selectFile,
    required TResult Function(String courseTitle) getAllHomeworksByCourse,
    required TResult Function(
            String courseTitle, String homeworkTitle, String userId)
        getSubmittedHomework,
    required TResult Function(String userId, String courseTitle,
            String homeworkTitle, String? note, int? submitDate)
        submitHomework,
  }) {
    return selectFile();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(UserModel user, String title, String courseTitle,
            String filePath, int dueDate, String? description)?
        uploadHomework,
    TResult Function()? selectFile,
    TResult Function(String courseTitle)? getAllHomeworksByCourse,
    TResult Function(String courseTitle, String homeworkTitle, String userId)?
        getSubmittedHomework,
    TResult Function(String userId, String courseTitle, String homeworkTitle,
            String? note, int? submitDate)?
        submitHomework,
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
    required TResult Function(_UploadHomework value) uploadHomework,
    required TResult Function(_SelectFile value) selectFile,
    required TResult Function(_GetAllHomeworksByCourse value)
        getAllHomeworksByCourse,
    required TResult Function(_GetSubmittedHomework value) getSubmittedHomework,
    required TResult Function(_SubmitHomework value) submitHomework,
  }) {
    return selectFile(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UploadHomework value)? uploadHomework,
    TResult Function(_SelectFile value)? selectFile,
    TResult Function(_GetAllHomeworksByCourse value)? getAllHomeworksByCourse,
    TResult Function(_GetSubmittedHomework value)? getSubmittedHomework,
    TResult Function(_SubmitHomework value)? submitHomework,
    required TResult orElse(),
  }) {
    if (selectFile != null) {
      return selectFile(this);
    }
    return orElse();
  }
}

abstract class _SelectFile implements HomeworkEvent {
  const factory _SelectFile() = _$_SelectFile;
}

/// @nodoc
abstract class _$GetAllHomeworksByCourseCopyWith<$Res> {
  factory _$GetAllHomeworksByCourseCopyWith(_GetAllHomeworksByCourse value,
          $Res Function(_GetAllHomeworksByCourse) then) =
      __$GetAllHomeworksByCourseCopyWithImpl<$Res>;
  $Res call({String courseTitle});
}

/// @nodoc
class __$GetAllHomeworksByCourseCopyWithImpl<$Res>
    extends _$HomeworkEventCopyWithImpl<$Res>
    implements _$GetAllHomeworksByCourseCopyWith<$Res> {
  __$GetAllHomeworksByCourseCopyWithImpl(_GetAllHomeworksByCourse _value,
      $Res Function(_GetAllHomeworksByCourse) _then)
      : super(_value, (v) => _then(v as _GetAllHomeworksByCourse));

  @override
  _GetAllHomeworksByCourse get _value =>
      super._value as _GetAllHomeworksByCourse;

  @override
  $Res call({
    Object? courseTitle = freezed,
  }) {
    return _then(_GetAllHomeworksByCourse(
      courseTitle: courseTitle == freezed
          ? _value.courseTitle
          : courseTitle // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetAllHomeworksByCourse implements _GetAllHomeworksByCourse {
  const _$_GetAllHomeworksByCourse({required this.courseTitle});

  @override
  final String courseTitle;

  @override
  String toString() {
    return 'HomeworkEvent.getAllHomeworksByCourse(courseTitle: $courseTitle)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetAllHomeworksByCourse &&
            (identical(other.courseTitle, courseTitle) ||
                const DeepCollectionEquality()
                    .equals(other.courseTitle, courseTitle)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(courseTitle);

  @JsonKey(ignore: true)
  @override
  _$GetAllHomeworksByCourseCopyWith<_GetAllHomeworksByCourse> get copyWith =>
      __$GetAllHomeworksByCourseCopyWithImpl<_GetAllHomeworksByCourse>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(UserModel user, String title, String courseTitle,
            String filePath, int dueDate, String? description)
        uploadHomework,
    required TResult Function() selectFile,
    required TResult Function(String courseTitle) getAllHomeworksByCourse,
    required TResult Function(
            String courseTitle, String homeworkTitle, String userId)
        getSubmittedHomework,
    required TResult Function(String userId, String courseTitle,
            String homeworkTitle, String? note, int? submitDate)
        submitHomework,
  }) {
    return getAllHomeworksByCourse(courseTitle);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(UserModel user, String title, String courseTitle,
            String filePath, int dueDate, String? description)?
        uploadHomework,
    TResult Function()? selectFile,
    TResult Function(String courseTitle)? getAllHomeworksByCourse,
    TResult Function(String courseTitle, String homeworkTitle, String userId)?
        getSubmittedHomework,
    TResult Function(String userId, String courseTitle, String homeworkTitle,
            String? note, int? submitDate)?
        submitHomework,
    required TResult orElse(),
  }) {
    if (getAllHomeworksByCourse != null) {
      return getAllHomeworksByCourse(courseTitle);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_UploadHomework value) uploadHomework,
    required TResult Function(_SelectFile value) selectFile,
    required TResult Function(_GetAllHomeworksByCourse value)
        getAllHomeworksByCourse,
    required TResult Function(_GetSubmittedHomework value) getSubmittedHomework,
    required TResult Function(_SubmitHomework value) submitHomework,
  }) {
    return getAllHomeworksByCourse(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UploadHomework value)? uploadHomework,
    TResult Function(_SelectFile value)? selectFile,
    TResult Function(_GetAllHomeworksByCourse value)? getAllHomeworksByCourse,
    TResult Function(_GetSubmittedHomework value)? getSubmittedHomework,
    TResult Function(_SubmitHomework value)? submitHomework,
    required TResult orElse(),
  }) {
    if (getAllHomeworksByCourse != null) {
      return getAllHomeworksByCourse(this);
    }
    return orElse();
  }
}

abstract class _GetAllHomeworksByCourse implements HomeworkEvent {
  const factory _GetAllHomeworksByCourse({required String courseTitle}) =
      _$_GetAllHomeworksByCourse;

  String get courseTitle => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GetAllHomeworksByCourseCopyWith<_GetAllHomeworksByCourse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetSubmittedHomeworkCopyWith<$Res> {
  factory _$GetSubmittedHomeworkCopyWith(_GetSubmittedHomework value,
          $Res Function(_GetSubmittedHomework) then) =
      __$GetSubmittedHomeworkCopyWithImpl<$Res>;
  $Res call({String courseTitle, String homeworkTitle, String userId});
}

/// @nodoc
class __$GetSubmittedHomeworkCopyWithImpl<$Res>
    extends _$HomeworkEventCopyWithImpl<$Res>
    implements _$GetSubmittedHomeworkCopyWith<$Res> {
  __$GetSubmittedHomeworkCopyWithImpl(
      _GetSubmittedHomework _value, $Res Function(_GetSubmittedHomework) _then)
      : super(_value, (v) => _then(v as _GetSubmittedHomework));

  @override
  _GetSubmittedHomework get _value => super._value as _GetSubmittedHomework;

  @override
  $Res call({
    Object? courseTitle = freezed,
    Object? homeworkTitle = freezed,
    Object? userId = freezed,
  }) {
    return _then(_GetSubmittedHomework(
      courseTitle: courseTitle == freezed
          ? _value.courseTitle
          : courseTitle // ignore: cast_nullable_to_non_nullable
              as String,
      homeworkTitle: homeworkTitle == freezed
          ? _value.homeworkTitle
          : homeworkTitle // ignore: cast_nullable_to_non_nullable
              as String,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetSubmittedHomework implements _GetSubmittedHomework {
  const _$_GetSubmittedHomework(
      {required this.courseTitle,
      required this.homeworkTitle,
      required this.userId});

  @override
  final String courseTitle;
  @override
  final String homeworkTitle;
  @override
  final String userId;

  @override
  String toString() {
    return 'HomeworkEvent.getSubmittedHomework(courseTitle: $courseTitle, homeworkTitle: $homeworkTitle, userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetSubmittedHomework &&
            (identical(other.courseTitle, courseTitle) ||
                const DeepCollectionEquality()
                    .equals(other.courseTitle, courseTitle)) &&
            (identical(other.homeworkTitle, homeworkTitle) ||
                const DeepCollectionEquality()
                    .equals(other.homeworkTitle, homeworkTitle)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(courseTitle) ^
      const DeepCollectionEquality().hash(homeworkTitle) ^
      const DeepCollectionEquality().hash(userId);

  @JsonKey(ignore: true)
  @override
  _$GetSubmittedHomeworkCopyWith<_GetSubmittedHomework> get copyWith =>
      __$GetSubmittedHomeworkCopyWithImpl<_GetSubmittedHomework>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(UserModel user, String title, String courseTitle,
            String filePath, int dueDate, String? description)
        uploadHomework,
    required TResult Function() selectFile,
    required TResult Function(String courseTitle) getAllHomeworksByCourse,
    required TResult Function(
            String courseTitle, String homeworkTitle, String userId)
        getSubmittedHomework,
    required TResult Function(String userId, String courseTitle,
            String homeworkTitle, String? note, int? submitDate)
        submitHomework,
  }) {
    return getSubmittedHomework(courseTitle, homeworkTitle, userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(UserModel user, String title, String courseTitle,
            String filePath, int dueDate, String? description)?
        uploadHomework,
    TResult Function()? selectFile,
    TResult Function(String courseTitle)? getAllHomeworksByCourse,
    TResult Function(String courseTitle, String homeworkTitle, String userId)?
        getSubmittedHomework,
    TResult Function(String userId, String courseTitle, String homeworkTitle,
            String? note, int? submitDate)?
        submitHomework,
    required TResult orElse(),
  }) {
    if (getSubmittedHomework != null) {
      return getSubmittedHomework(courseTitle, homeworkTitle, userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_UploadHomework value) uploadHomework,
    required TResult Function(_SelectFile value) selectFile,
    required TResult Function(_GetAllHomeworksByCourse value)
        getAllHomeworksByCourse,
    required TResult Function(_GetSubmittedHomework value) getSubmittedHomework,
    required TResult Function(_SubmitHomework value) submitHomework,
  }) {
    return getSubmittedHomework(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UploadHomework value)? uploadHomework,
    TResult Function(_SelectFile value)? selectFile,
    TResult Function(_GetAllHomeworksByCourse value)? getAllHomeworksByCourse,
    TResult Function(_GetSubmittedHomework value)? getSubmittedHomework,
    TResult Function(_SubmitHomework value)? submitHomework,
    required TResult orElse(),
  }) {
    if (getSubmittedHomework != null) {
      return getSubmittedHomework(this);
    }
    return orElse();
  }
}

abstract class _GetSubmittedHomework implements HomeworkEvent {
  const factory _GetSubmittedHomework(
      {required String courseTitle,
      required String homeworkTitle,
      required String userId}) = _$_GetSubmittedHomework;

  String get courseTitle => throw _privateConstructorUsedError;
  String get homeworkTitle => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GetSubmittedHomeworkCopyWith<_GetSubmittedHomework> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SubmitHomeworkCopyWith<$Res> {
  factory _$SubmitHomeworkCopyWith(
          _SubmitHomework value, $Res Function(_SubmitHomework) then) =
      __$SubmitHomeworkCopyWithImpl<$Res>;
  $Res call(
      {String userId,
      String courseTitle,
      String homeworkTitle,
      String? note,
      int? submitDate});
}

/// @nodoc
class __$SubmitHomeworkCopyWithImpl<$Res>
    extends _$HomeworkEventCopyWithImpl<$Res>
    implements _$SubmitHomeworkCopyWith<$Res> {
  __$SubmitHomeworkCopyWithImpl(
      _SubmitHomework _value, $Res Function(_SubmitHomework) _then)
      : super(_value, (v) => _then(v as _SubmitHomework));

  @override
  _SubmitHomework get _value => super._value as _SubmitHomework;

  @override
  $Res call({
    Object? userId = freezed,
    Object? courseTitle = freezed,
    Object? homeworkTitle = freezed,
    Object? note = freezed,
    Object? submitDate = freezed,
  }) {
    return _then(_SubmitHomework(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      courseTitle: courseTitle == freezed
          ? _value.courseTitle
          : courseTitle // ignore: cast_nullable_to_non_nullable
              as String,
      homeworkTitle: homeworkTitle == freezed
          ? _value.homeworkTitle
          : homeworkTitle // ignore: cast_nullable_to_non_nullable
              as String,
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      submitDate: submitDate == freezed
          ? _value.submitDate
          : submitDate // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_SubmitHomework implements _SubmitHomework {
  const _$_SubmitHomework(
      {required this.userId,
      required this.courseTitle,
      required this.homeworkTitle,
      this.note,
      this.submitDate});

  @override
  final String userId;
  @override
  final String courseTitle;
  @override
  final String homeworkTitle;
  @override
  final String? note;
  @override
  final int? submitDate;

  @override
  String toString() {
    return 'HomeworkEvent.submitHomework(userId: $userId, courseTitle: $courseTitle, homeworkTitle: $homeworkTitle, note: $note, submitDate: $submitDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SubmitHomework &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.courseTitle, courseTitle) ||
                const DeepCollectionEquality()
                    .equals(other.courseTitle, courseTitle)) &&
            (identical(other.homeworkTitle, homeworkTitle) ||
                const DeepCollectionEquality()
                    .equals(other.homeworkTitle, homeworkTitle)) &&
            (identical(other.note, note) ||
                const DeepCollectionEquality().equals(other.note, note)) &&
            (identical(other.submitDate, submitDate) ||
                const DeepCollectionEquality()
                    .equals(other.submitDate, submitDate)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(courseTitle) ^
      const DeepCollectionEquality().hash(homeworkTitle) ^
      const DeepCollectionEquality().hash(note) ^
      const DeepCollectionEquality().hash(submitDate);

  @JsonKey(ignore: true)
  @override
  _$SubmitHomeworkCopyWith<_SubmitHomework> get copyWith =>
      __$SubmitHomeworkCopyWithImpl<_SubmitHomework>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(UserModel user, String title, String courseTitle,
            String filePath, int dueDate, String? description)
        uploadHomework,
    required TResult Function() selectFile,
    required TResult Function(String courseTitle) getAllHomeworksByCourse,
    required TResult Function(
            String courseTitle, String homeworkTitle, String userId)
        getSubmittedHomework,
    required TResult Function(String userId, String courseTitle,
            String homeworkTitle, String? note, int? submitDate)
        submitHomework,
  }) {
    return submitHomework(userId, courseTitle, homeworkTitle, note, submitDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(UserModel user, String title, String courseTitle,
            String filePath, int dueDate, String? description)?
        uploadHomework,
    TResult Function()? selectFile,
    TResult Function(String courseTitle)? getAllHomeworksByCourse,
    TResult Function(String courseTitle, String homeworkTitle, String userId)?
        getSubmittedHomework,
    TResult Function(String userId, String courseTitle, String homeworkTitle,
            String? note, int? submitDate)?
        submitHomework,
    required TResult orElse(),
  }) {
    if (submitHomework != null) {
      return submitHomework(
          userId, courseTitle, homeworkTitle, note, submitDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_UploadHomework value) uploadHomework,
    required TResult Function(_SelectFile value) selectFile,
    required TResult Function(_GetAllHomeworksByCourse value)
        getAllHomeworksByCourse,
    required TResult Function(_GetSubmittedHomework value) getSubmittedHomework,
    required TResult Function(_SubmitHomework value) submitHomework,
  }) {
    return submitHomework(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UploadHomework value)? uploadHomework,
    TResult Function(_SelectFile value)? selectFile,
    TResult Function(_GetAllHomeworksByCourse value)? getAllHomeworksByCourse,
    TResult Function(_GetSubmittedHomework value)? getSubmittedHomework,
    TResult Function(_SubmitHomework value)? submitHomework,
    required TResult orElse(),
  }) {
    if (submitHomework != null) {
      return submitHomework(this);
    }
    return orElse();
  }
}

abstract class _SubmitHomework implements HomeworkEvent {
  const factory _SubmitHomework(
      {required String userId,
      required String courseTitle,
      required String homeworkTitle,
      String? note,
      int? submitDate}) = _$_SubmitHomework;

  String get userId => throw _privateConstructorUsedError;
  String get courseTitle => throw _privateConstructorUsedError;
  String get homeworkTitle => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;
  int? get submitDate => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SubmitHomeworkCopyWith<_SubmitHomework> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$HomeworkStateTearOff {
  const _$HomeworkStateTearOff();

  _HomeworkState call(
      {required String title,
      required String courseTitle,
      required String userId,
      required List<HomeworkEntity> homeworks,
      required HomeworkSubmitEntity homeworkSubmitEntity,
      String? note,
      String? description,
      String? filePath,
      bool? isSubmitting,
      Option<Either<HomeworkFailure, Unit>>? homeworkFailureOrSuccessOption}) {
    return _HomeworkState(
      title: title,
      courseTitle: courseTitle,
      userId: userId,
      homeworks: homeworks,
      homeworkSubmitEntity: homeworkSubmitEntity,
      note: note,
      description: description,
      filePath: filePath,
      isSubmitting: isSubmitting,
      homeworkFailureOrSuccessOption: homeworkFailureOrSuccessOption,
    );
  }
}

/// @nodoc
const $HomeworkState = _$HomeworkStateTearOff();

/// @nodoc
mixin _$HomeworkState {
  String get title => throw _privateConstructorUsedError;
  String get courseTitle => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  List<HomeworkEntity> get homeworks => throw _privateConstructorUsedError;
  HomeworkSubmitEntity get homeworkSubmitEntity =>
      throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get filePath => throw _privateConstructorUsedError;
  bool? get isSubmitting => throw _privateConstructorUsedError;
  Option<Either<HomeworkFailure, Unit>>? get homeworkFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeworkStateCopyWith<HomeworkState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeworkStateCopyWith<$Res> {
  factory $HomeworkStateCopyWith(
          HomeworkState value, $Res Function(HomeworkState) then) =
      _$HomeworkStateCopyWithImpl<$Res>;
  $Res call(
      {String title,
      String courseTitle,
      String userId,
      List<HomeworkEntity> homeworks,
      HomeworkSubmitEntity homeworkSubmitEntity,
      String? note,
      String? description,
      String? filePath,
      bool? isSubmitting,
      Option<Either<HomeworkFailure, Unit>>? homeworkFailureOrSuccessOption});
}

/// @nodoc
class _$HomeworkStateCopyWithImpl<$Res>
    implements $HomeworkStateCopyWith<$Res> {
  _$HomeworkStateCopyWithImpl(this._value, this._then);

  final HomeworkState _value;
  // ignore: unused_field
  final $Res Function(HomeworkState) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? courseTitle = freezed,
    Object? userId = freezed,
    Object? homeworks = freezed,
    Object? homeworkSubmitEntity = freezed,
    Object? note = freezed,
    Object? description = freezed,
    Object? filePath = freezed,
    Object? isSubmitting = freezed,
    Object? homeworkFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      courseTitle: courseTitle == freezed
          ? _value.courseTitle
          : courseTitle // ignore: cast_nullable_to_non_nullable
              as String,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      homeworks: homeworks == freezed
          ? _value.homeworks
          : homeworks // ignore: cast_nullable_to_non_nullable
              as List<HomeworkEntity>,
      homeworkSubmitEntity: homeworkSubmitEntity == freezed
          ? _value.homeworkSubmitEntity
          : homeworkSubmitEntity // ignore: cast_nullable_to_non_nullable
              as HomeworkSubmitEntity,
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      filePath: filePath == freezed
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String?,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool?,
      homeworkFailureOrSuccessOption: homeworkFailureOrSuccessOption == freezed
          ? _value.homeworkFailureOrSuccessOption
          : homeworkFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<HomeworkFailure, Unit>>?,
    ));
  }
}

/// @nodoc
abstract class _$HomeworkStateCopyWith<$Res>
    implements $HomeworkStateCopyWith<$Res> {
  factory _$HomeworkStateCopyWith(
          _HomeworkState value, $Res Function(_HomeworkState) then) =
      __$HomeworkStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String title,
      String courseTitle,
      String userId,
      List<HomeworkEntity> homeworks,
      HomeworkSubmitEntity homeworkSubmitEntity,
      String? note,
      String? description,
      String? filePath,
      bool? isSubmitting,
      Option<Either<HomeworkFailure, Unit>>? homeworkFailureOrSuccessOption});
}

/// @nodoc
class __$HomeworkStateCopyWithImpl<$Res>
    extends _$HomeworkStateCopyWithImpl<$Res>
    implements _$HomeworkStateCopyWith<$Res> {
  __$HomeworkStateCopyWithImpl(
      _HomeworkState _value, $Res Function(_HomeworkState) _then)
      : super(_value, (v) => _then(v as _HomeworkState));

  @override
  _HomeworkState get _value => super._value as _HomeworkState;

  @override
  $Res call({
    Object? title = freezed,
    Object? courseTitle = freezed,
    Object? userId = freezed,
    Object? homeworks = freezed,
    Object? homeworkSubmitEntity = freezed,
    Object? note = freezed,
    Object? description = freezed,
    Object? filePath = freezed,
    Object? isSubmitting = freezed,
    Object? homeworkFailureOrSuccessOption = freezed,
  }) {
    return _then(_HomeworkState(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      courseTitle: courseTitle == freezed
          ? _value.courseTitle
          : courseTitle // ignore: cast_nullable_to_non_nullable
              as String,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      homeworks: homeworks == freezed
          ? _value.homeworks
          : homeworks // ignore: cast_nullable_to_non_nullable
              as List<HomeworkEntity>,
      homeworkSubmitEntity: homeworkSubmitEntity == freezed
          ? _value.homeworkSubmitEntity
          : homeworkSubmitEntity // ignore: cast_nullable_to_non_nullable
              as HomeworkSubmitEntity,
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      filePath: filePath == freezed
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String?,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool?,
      homeworkFailureOrSuccessOption: homeworkFailureOrSuccessOption == freezed
          ? _value.homeworkFailureOrSuccessOption
          : homeworkFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<HomeworkFailure, Unit>>?,
    ));
  }
}

/// @nodoc

class _$_HomeworkState implements _HomeworkState {
  const _$_HomeworkState(
      {required this.title,
      required this.courseTitle,
      required this.userId,
      required this.homeworks,
      required this.homeworkSubmitEntity,
      this.note,
      this.description,
      this.filePath,
      this.isSubmitting,
      this.homeworkFailureOrSuccessOption});

  @override
  final String title;
  @override
  final String courseTitle;
  @override
  final String userId;
  @override
  final List<HomeworkEntity> homeworks;
  @override
  final HomeworkSubmitEntity homeworkSubmitEntity;
  @override
  final String? note;
  @override
  final String? description;
  @override
  final String? filePath;
  @override
  final bool? isSubmitting;
  @override
  final Option<Either<HomeworkFailure, Unit>>? homeworkFailureOrSuccessOption;

  @override
  String toString() {
    return 'HomeworkState(title: $title, courseTitle: $courseTitle, userId: $userId, homeworks: $homeworks, homeworkSubmitEntity: $homeworkSubmitEntity, note: $note, description: $description, filePath: $filePath, isSubmitting: $isSubmitting, homeworkFailureOrSuccessOption: $homeworkFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HomeworkState &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.courseTitle, courseTitle) ||
                const DeepCollectionEquality()
                    .equals(other.courseTitle, courseTitle)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.homeworks, homeworks) ||
                const DeepCollectionEquality()
                    .equals(other.homeworks, homeworks)) &&
            (identical(other.homeworkSubmitEntity, homeworkSubmitEntity) ||
                const DeepCollectionEquality().equals(
                    other.homeworkSubmitEntity, homeworkSubmitEntity)) &&
            (identical(other.note, note) ||
                const DeepCollectionEquality().equals(other.note, note)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.filePath, filePath) ||
                const DeepCollectionEquality()
                    .equals(other.filePath, filePath)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.homeworkFailureOrSuccessOption,
                    homeworkFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.homeworkFailureOrSuccessOption,
                    homeworkFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(courseTitle) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(homeworks) ^
      const DeepCollectionEquality().hash(homeworkSubmitEntity) ^
      const DeepCollectionEquality().hash(note) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(filePath) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(homeworkFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$HomeworkStateCopyWith<_HomeworkState> get copyWith =>
      __$HomeworkStateCopyWithImpl<_HomeworkState>(this, _$identity);
}

abstract class _HomeworkState implements HomeworkState {
  const factory _HomeworkState(
      {required String title,
      required String courseTitle,
      required String userId,
      required List<HomeworkEntity> homeworks,
      required HomeworkSubmitEntity homeworkSubmitEntity,
      String? note,
      String? description,
      String? filePath,
      bool? isSubmitting,
      Option<Either<HomeworkFailure, Unit>>?
          homeworkFailureOrSuccessOption}) = _$_HomeworkState;

  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get courseTitle => throw _privateConstructorUsedError;
  @override
  String get userId => throw _privateConstructorUsedError;
  @override
  List<HomeworkEntity> get homeworks => throw _privateConstructorUsedError;
  @override
  HomeworkSubmitEntity get homeworkSubmitEntity =>
      throw _privateConstructorUsedError;
  @override
  String? get note => throw _privateConstructorUsedError;
  @override
  String? get description => throw _privateConstructorUsedError;
  @override
  String? get filePath => throw _privateConstructorUsedError;
  @override
  bool? get isSubmitting => throw _privateConstructorUsedError;
  @override
  Option<Either<HomeworkFailure, Unit>>? get homeworkFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$HomeworkStateCopyWith<_HomeworkState> get copyWith =>
      throw _privateConstructorUsedError;
}
