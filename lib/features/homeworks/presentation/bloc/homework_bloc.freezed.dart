// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'homework_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$HomeworkEventTearOff {
  const _$HomeworkEventTearOff();

// ignore: unused_element
  _Started started() {
    return const _Started();
  }

// ignore: unused_element
  _UploadHomework uploadHomework(
      {@required UserModel user,
      @required String title,
      @required String courseTitle,
      @required String filePath,
      @required int dueDate,
      String description}) {
    return _UploadHomework(
      user: user,
      title: title,
      courseTitle: courseTitle,
      filePath: filePath,
      dueDate: dueDate,
      description: description,
    );
  }

// ignore: unused_element
  _SelectFile selectFile() {
    return const _SelectFile();
  }
}

/// @nodoc
// ignore: unused_element
const $HomeworkEvent = _$HomeworkEventTearOff();

/// @nodoc
mixin _$HomeworkEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(),
    @required
        TResult uploadHomework(UserModel user, String title, String courseTitle,
            String filePath, int dueDate, String description),
    @required TResult selectFile(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult uploadHomework(UserModel user, String title, String courseTitle,
        String filePath, int dueDate, String description),
    TResult selectFile(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required TResult uploadHomework(_UploadHomework value),
    @required TResult selectFile(_SelectFile value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult uploadHomework(_UploadHomework value),
    TResult selectFile(_SelectFile value),
    @required TResult orElse(),
  });
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
  TResult when<TResult extends Object>({
    @required TResult started(),
    @required
        TResult uploadHomework(UserModel user, String title, String courseTitle,
            String filePath, int dueDate, String description),
    @required TResult selectFile(),
  }) {
    assert(started != null);
    assert(uploadHomework != null);
    assert(selectFile != null);
    return started();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult uploadHomework(UserModel user, String title, String courseTitle,
        String filePath, int dueDate, String description),
    TResult selectFile(),
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
    @required TResult uploadHomework(_UploadHomework value),
    @required TResult selectFile(_SelectFile value),
  }) {
    assert(started != null);
    assert(uploadHomework != null);
    assert(selectFile != null);
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult uploadHomework(_UploadHomework value),
    TResult selectFile(_SelectFile value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
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
      String description});
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
    Object user = freezed,
    Object title = freezed,
    Object courseTitle = freezed,
    Object filePath = freezed,
    Object dueDate = freezed,
    Object description = freezed,
  }) {
    return _then(_UploadHomework(
      user: user == freezed ? _value.user : user as UserModel,
      title: title == freezed ? _value.title : title as String,
      courseTitle:
          courseTitle == freezed ? _value.courseTitle : courseTitle as String,
      filePath: filePath == freezed ? _value.filePath : filePath as String,
      dueDate: dueDate == freezed ? _value.dueDate : dueDate as int,
      description:
          description == freezed ? _value.description : description as String,
    ));
  }
}

/// @nodoc
class _$_UploadHomework implements _UploadHomework {
  const _$_UploadHomework(
      {@required this.user,
      @required this.title,
      @required this.courseTitle,
      @required this.filePath,
      @required this.dueDate,
      this.description})
      : assert(user != null),
        assert(title != null),
        assert(courseTitle != null),
        assert(filePath != null),
        assert(dueDate != null);

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
  final String description;

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
  TResult when<TResult extends Object>({
    @required TResult started(),
    @required
        TResult uploadHomework(UserModel user, String title, String courseTitle,
            String filePath, int dueDate, String description),
    @required TResult selectFile(),
  }) {
    assert(started != null);
    assert(uploadHomework != null);
    assert(selectFile != null);
    return uploadHomework(
        user, title, courseTitle, filePath, dueDate, description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult uploadHomework(UserModel user, String title, String courseTitle,
        String filePath, int dueDate, String description),
    TResult selectFile(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (uploadHomework != null) {
      return uploadHomework(
          user, title, courseTitle, filePath, dueDate, description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required TResult uploadHomework(_UploadHomework value),
    @required TResult selectFile(_SelectFile value),
  }) {
    assert(started != null);
    assert(uploadHomework != null);
    assert(selectFile != null);
    return uploadHomework(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult uploadHomework(_UploadHomework value),
    TResult selectFile(_SelectFile value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (uploadHomework != null) {
      return uploadHomework(this);
    }
    return orElse();
  }
}

abstract class _UploadHomework implements HomeworkEvent {
  const factory _UploadHomework(
      {@required UserModel user,
      @required String title,
      @required String courseTitle,
      @required String filePath,
      @required int dueDate,
      String description}) = _$_UploadHomework;

  UserModel get user;
  String get title;
  String get courseTitle;
  String get filePath;
  int get dueDate;
  String get description;
  @JsonKey(ignore: true)
  _$UploadHomeworkCopyWith<_UploadHomework> get copyWith;
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
  TResult when<TResult extends Object>({
    @required TResult started(),
    @required
        TResult uploadHomework(UserModel user, String title, String courseTitle,
            String filePath, int dueDate, String description),
    @required TResult selectFile(),
  }) {
    assert(started != null);
    assert(uploadHomework != null);
    assert(selectFile != null);
    return selectFile();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult uploadHomework(UserModel user, String title, String courseTitle,
        String filePath, int dueDate, String description),
    TResult selectFile(),
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
    @required TResult uploadHomework(_UploadHomework value),
    @required TResult selectFile(_SelectFile value),
  }) {
    assert(started != null);
    assert(uploadHomework != null);
    assert(selectFile != null);
    return selectFile(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult uploadHomework(_UploadHomework value),
    TResult selectFile(_SelectFile value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
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
class _$HomeworkStateTearOff {
  const _$HomeworkStateTearOff();

// ignore: unused_element
  _HomeworkState call(
      {@required String title,
      @required String userId,
      @required List<HomeworkEntity> homeworks,
      String description,
      String filePath,
      bool isSubmitting,
      Option<Either<HomeworkFailure, Unit>> homeworkFailureOrSuccessOption}) {
    return _HomeworkState(
      title: title,
      userId: userId,
      homeworks: homeworks,
      description: description,
      filePath: filePath,
      isSubmitting: isSubmitting,
      homeworkFailureOrSuccessOption: homeworkFailureOrSuccessOption,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $HomeworkState = _$HomeworkStateTearOff();

/// @nodoc
mixin _$HomeworkState {
  String get title;
  String get userId;
  List<HomeworkEntity> get homeworks;
  String get description;
  String get filePath;
  bool get isSubmitting;
  Option<Either<HomeworkFailure, Unit>> get homeworkFailureOrSuccessOption;

  @JsonKey(ignore: true)
  $HomeworkStateCopyWith<HomeworkState> get copyWith;
}

/// @nodoc
abstract class $HomeworkStateCopyWith<$Res> {
  factory $HomeworkStateCopyWith(
          HomeworkState value, $Res Function(HomeworkState) then) =
      _$HomeworkStateCopyWithImpl<$Res>;
  $Res call(
      {String title,
      String userId,
      List<HomeworkEntity> homeworks,
      String description,
      String filePath,
      bool isSubmitting,
      Option<Either<HomeworkFailure, Unit>> homeworkFailureOrSuccessOption});
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
    Object title = freezed,
    Object userId = freezed,
    Object homeworks = freezed,
    Object description = freezed,
    Object filePath = freezed,
    Object isSubmitting = freezed,
    Object homeworkFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed ? _value.title : title as String,
      userId: userId == freezed ? _value.userId : userId as String,
      homeworks: homeworks == freezed
          ? _value.homeworks
          : homeworks as List<HomeworkEntity>,
      description:
          description == freezed ? _value.description : description as String,
      filePath: filePath == freezed ? _value.filePath : filePath as String,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      homeworkFailureOrSuccessOption: homeworkFailureOrSuccessOption == freezed
          ? _value.homeworkFailureOrSuccessOption
          : homeworkFailureOrSuccessOption
              as Option<Either<HomeworkFailure, Unit>>,
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
      String userId,
      List<HomeworkEntity> homeworks,
      String description,
      String filePath,
      bool isSubmitting,
      Option<Either<HomeworkFailure, Unit>> homeworkFailureOrSuccessOption});
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
    Object title = freezed,
    Object userId = freezed,
    Object homeworks = freezed,
    Object description = freezed,
    Object filePath = freezed,
    Object isSubmitting = freezed,
    Object homeworkFailureOrSuccessOption = freezed,
  }) {
    return _then(_HomeworkState(
      title: title == freezed ? _value.title : title as String,
      userId: userId == freezed ? _value.userId : userId as String,
      homeworks: homeworks == freezed
          ? _value.homeworks
          : homeworks as List<HomeworkEntity>,
      description:
          description == freezed ? _value.description : description as String,
      filePath: filePath == freezed ? _value.filePath : filePath as String,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      homeworkFailureOrSuccessOption: homeworkFailureOrSuccessOption == freezed
          ? _value.homeworkFailureOrSuccessOption
          : homeworkFailureOrSuccessOption
              as Option<Either<HomeworkFailure, Unit>>,
    ));
  }
}

/// @nodoc
class _$_HomeworkState implements _HomeworkState {
  const _$_HomeworkState(
      {@required this.title,
      @required this.userId,
      @required this.homeworks,
      this.description,
      this.filePath,
      this.isSubmitting,
      this.homeworkFailureOrSuccessOption})
      : assert(title != null),
        assert(userId != null),
        assert(homeworks != null);

  @override
  final String title;
  @override
  final String userId;
  @override
  final List<HomeworkEntity> homeworks;
  @override
  final String description;
  @override
  final String filePath;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<HomeworkFailure, Unit>> homeworkFailureOrSuccessOption;

  @override
  String toString() {
    return 'HomeworkState(title: $title, userId: $userId, homeworks: $homeworks, description: $description, filePath: $filePath, isSubmitting: $isSubmitting, homeworkFailureOrSuccessOption: $homeworkFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HomeworkState &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.homeworks, homeworks) ||
                const DeepCollectionEquality()
                    .equals(other.homeworks, homeworks)) &&
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
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(homeworks) ^
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
      {@required String title,
      @required String userId,
      @required List<HomeworkEntity> homeworks,
      String description,
      String filePath,
      bool isSubmitting,
      Option<Either<HomeworkFailure, Unit>>
          homeworkFailureOrSuccessOption}) = _$_HomeworkState;

  @override
  String get title;
  @override
  String get userId;
  @override
  List<HomeworkEntity> get homeworks;
  @override
  String get description;
  @override
  String get filePath;
  @override
  bool get isSubmitting;
  @override
  Option<Either<HomeworkFailure, Unit>> get homeworkFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$HomeworkStateCopyWith<_HomeworkState> get copyWith;
}
