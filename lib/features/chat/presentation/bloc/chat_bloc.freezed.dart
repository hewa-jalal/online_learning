// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChatEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            String message, String fromUserId, String courseTitle)
        sendMessage,
    required TResult Function(
            String message,
            String courseTitle,
            String fromUserId,
            String imageUrl,
            ImageUploaderCubit imageUploaderCubit)
        sendImageMessage,
    required TResult Function(String message, String fromUserId,
            String courseTitle, ImageUploaderCubit imageUploaderCubit)
        sendFileMessage,
    required TResult Function() getAllMessages,
    required TResult Function(String courseTitle) getAllMessagesByCourse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String message, String fromUserId, String courseTitle)?
        sendMessage,
    TResult? Function(String message, String courseTitle, String fromUserId,
            String imageUrl, ImageUploaderCubit imageUploaderCubit)?
        sendImageMessage,
    TResult? Function(String message, String fromUserId, String courseTitle,
            ImageUploaderCubit imageUploaderCubit)?
        sendFileMessage,
    TResult? Function()? getAllMessages,
    TResult? Function(String courseTitle)? getAllMessagesByCourse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String message, String fromUserId, String courseTitle)?
        sendMessage,
    TResult Function(String message, String courseTitle, String fromUserId,
            String imageUrl, ImageUploaderCubit imageUploaderCubit)?
        sendImageMessage,
    TResult Function(String message, String fromUserId, String courseTitle,
            ImageUploaderCubit imageUploaderCubit)?
        sendFileMessage,
    TResult Function()? getAllMessages,
    TResult Function(String courseTitle)? getAllMessagesByCourse,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_SendImageMessage value) sendImageMessage,
    required TResult Function(_SendFileMessage value) sendFileMessage,
    required TResult Function(_GetAllMessages value) getAllMessages,
    required TResult Function(_GetAllMessagesByCourse value)
        getAllMessagesByCourse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_SendImageMessage value)? sendImageMessage,
    TResult? Function(_SendFileMessage value)? sendFileMessage,
    TResult? Function(_GetAllMessages value)? getAllMessages,
    TResult? Function(_GetAllMessagesByCourse value)? getAllMessagesByCourse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_SendImageMessage value)? sendImageMessage,
    TResult Function(_SendFileMessage value)? sendFileMessage,
    TResult Function(_GetAllMessages value)? getAllMessages,
    TResult Function(_GetAllMessagesByCourse value)? getAllMessagesByCourse,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatEventCopyWith<$Res> {
  factory $ChatEventCopyWith(ChatEvent value, $Res Function(ChatEvent) then) =
      _$ChatEventCopyWithImpl<$Res, ChatEvent>;
}

/// @nodoc
class _$ChatEventCopyWithImpl<$Res, $Val extends ChatEvent>
    implements $ChatEventCopyWith<$Res> {
  _$ChatEventCopyWithImpl(this._value, this._then);

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
    extends _$ChatEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'ChatEvent.started()';
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
    required TResult Function(
            String message, String fromUserId, String courseTitle)
        sendMessage,
    required TResult Function(
            String message,
            String courseTitle,
            String fromUserId,
            String imageUrl,
            ImageUploaderCubit imageUploaderCubit)
        sendImageMessage,
    required TResult Function(String message, String fromUserId,
            String courseTitle, ImageUploaderCubit imageUploaderCubit)
        sendFileMessage,
    required TResult Function() getAllMessages,
    required TResult Function(String courseTitle) getAllMessagesByCourse,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String message, String fromUserId, String courseTitle)?
        sendMessage,
    TResult? Function(String message, String courseTitle, String fromUserId,
            String imageUrl, ImageUploaderCubit imageUploaderCubit)?
        sendImageMessage,
    TResult? Function(String message, String fromUserId, String courseTitle,
            ImageUploaderCubit imageUploaderCubit)?
        sendFileMessage,
    TResult? Function()? getAllMessages,
    TResult? Function(String courseTitle)? getAllMessagesByCourse,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String message, String fromUserId, String courseTitle)?
        sendMessage,
    TResult Function(String message, String courseTitle, String fromUserId,
            String imageUrl, ImageUploaderCubit imageUploaderCubit)?
        sendImageMessage,
    TResult Function(String message, String fromUserId, String courseTitle,
            ImageUploaderCubit imageUploaderCubit)?
        sendFileMessage,
    TResult Function()? getAllMessages,
    TResult Function(String courseTitle)? getAllMessagesByCourse,
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
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_SendImageMessage value) sendImageMessage,
    required TResult Function(_SendFileMessage value) sendFileMessage,
    required TResult Function(_GetAllMessages value) getAllMessages,
    required TResult Function(_GetAllMessagesByCourse value)
        getAllMessagesByCourse,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_SendImageMessage value)? sendImageMessage,
    TResult? Function(_SendFileMessage value)? sendFileMessage,
    TResult? Function(_GetAllMessages value)? getAllMessages,
    TResult? Function(_GetAllMessagesByCourse value)? getAllMessagesByCourse,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_SendImageMessage value)? sendImageMessage,
    TResult Function(_SendFileMessage value)? sendFileMessage,
    TResult Function(_GetAllMessages value)? getAllMessages,
    TResult Function(_GetAllMessagesByCourse value)? getAllMessagesByCourse,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ChatEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$SendMessageImplCopyWith<$Res> {
  factory _$$SendMessageImplCopyWith(
          _$SendMessageImpl value, $Res Function(_$SendMessageImpl) then) =
      __$$SendMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message, String fromUserId, String courseTitle});
}

/// @nodoc
class __$$SendMessageImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$SendMessageImpl>
    implements _$$SendMessageImplCopyWith<$Res> {
  __$$SendMessageImplCopyWithImpl(
      _$SendMessageImpl _value, $Res Function(_$SendMessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? fromUserId = null,
    Object? courseTitle = null,
  }) {
    return _then(_$SendMessageImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      fromUserId: null == fromUserId
          ? _value.fromUserId
          : fromUserId // ignore: cast_nullable_to_non_nullable
              as String,
      courseTitle: null == courseTitle
          ? _value.courseTitle
          : courseTitle // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SendMessageImpl implements _SendMessage {
  const _$SendMessageImpl(
      {required this.message,
      required this.fromUserId,
      required this.courseTitle});

  @override
  final String message;
  @override
  final String fromUserId;
  @override
  final String courseTitle;

  @override
  String toString() {
    return 'ChatEvent.sendMessage(message: $message, fromUserId: $fromUserId, courseTitle: $courseTitle)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendMessageImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.fromUserId, fromUserId) ||
                other.fromUserId == fromUserId) &&
            (identical(other.courseTitle, courseTitle) ||
                other.courseTitle == courseTitle));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, message, fromUserId, courseTitle);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendMessageImplCopyWith<_$SendMessageImpl> get copyWith =>
      __$$SendMessageImplCopyWithImpl<_$SendMessageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            String message, String fromUserId, String courseTitle)
        sendMessage,
    required TResult Function(
            String message,
            String courseTitle,
            String fromUserId,
            String imageUrl,
            ImageUploaderCubit imageUploaderCubit)
        sendImageMessage,
    required TResult Function(String message, String fromUserId,
            String courseTitle, ImageUploaderCubit imageUploaderCubit)
        sendFileMessage,
    required TResult Function() getAllMessages,
    required TResult Function(String courseTitle) getAllMessagesByCourse,
  }) {
    return sendMessage(message, fromUserId, courseTitle);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String message, String fromUserId, String courseTitle)?
        sendMessage,
    TResult? Function(String message, String courseTitle, String fromUserId,
            String imageUrl, ImageUploaderCubit imageUploaderCubit)?
        sendImageMessage,
    TResult? Function(String message, String fromUserId, String courseTitle,
            ImageUploaderCubit imageUploaderCubit)?
        sendFileMessage,
    TResult? Function()? getAllMessages,
    TResult? Function(String courseTitle)? getAllMessagesByCourse,
  }) {
    return sendMessage?.call(message, fromUserId, courseTitle);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String message, String fromUserId, String courseTitle)?
        sendMessage,
    TResult Function(String message, String courseTitle, String fromUserId,
            String imageUrl, ImageUploaderCubit imageUploaderCubit)?
        sendImageMessage,
    TResult Function(String message, String fromUserId, String courseTitle,
            ImageUploaderCubit imageUploaderCubit)?
        sendFileMessage,
    TResult Function()? getAllMessages,
    TResult Function(String courseTitle)? getAllMessagesByCourse,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(message, fromUserId, courseTitle);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_SendImageMessage value) sendImageMessage,
    required TResult Function(_SendFileMessage value) sendFileMessage,
    required TResult Function(_GetAllMessages value) getAllMessages,
    required TResult Function(_GetAllMessagesByCourse value)
        getAllMessagesByCourse,
  }) {
    return sendMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_SendImageMessage value)? sendImageMessage,
    TResult? Function(_SendFileMessage value)? sendFileMessage,
    TResult? Function(_GetAllMessages value)? getAllMessages,
    TResult? Function(_GetAllMessagesByCourse value)? getAllMessagesByCourse,
  }) {
    return sendMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_SendImageMessage value)? sendImageMessage,
    TResult Function(_SendFileMessage value)? sendFileMessage,
    TResult Function(_GetAllMessages value)? getAllMessages,
    TResult Function(_GetAllMessagesByCourse value)? getAllMessagesByCourse,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(this);
    }
    return orElse();
  }
}

abstract class _SendMessage implements ChatEvent {
  const factory _SendMessage(
      {required final String message,
      required final String fromUserId,
      required final String courseTitle}) = _$SendMessageImpl;

  String get message;
  String get fromUserId;
  String get courseTitle;
  @JsonKey(ignore: true)
  _$$SendMessageImplCopyWith<_$SendMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SendImageMessageImplCopyWith<$Res> {
  factory _$$SendImageMessageImplCopyWith(_$SendImageMessageImpl value,
          $Res Function(_$SendImageMessageImpl) then) =
      __$$SendImageMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String message,
      String courseTitle,
      String fromUserId,
      String imageUrl,
      ImageUploaderCubit imageUploaderCubit});
}

/// @nodoc
class __$$SendImageMessageImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$SendImageMessageImpl>
    implements _$$SendImageMessageImplCopyWith<$Res> {
  __$$SendImageMessageImplCopyWithImpl(_$SendImageMessageImpl _value,
      $Res Function(_$SendImageMessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? courseTitle = null,
    Object? fromUserId = null,
    Object? imageUrl = null,
    Object? imageUploaderCubit = null,
  }) {
    return _then(_$SendImageMessageImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      courseTitle: null == courseTitle
          ? _value.courseTitle
          : courseTitle // ignore: cast_nullable_to_non_nullable
              as String,
      fromUserId: null == fromUserId
          ? _value.fromUserId
          : fromUserId // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      imageUploaderCubit: null == imageUploaderCubit
          ? _value.imageUploaderCubit
          : imageUploaderCubit // ignore: cast_nullable_to_non_nullable
              as ImageUploaderCubit,
    ));
  }
}

/// @nodoc

class _$SendImageMessageImpl implements _SendImageMessage {
  const _$SendImageMessageImpl(
      {required this.message,
      required this.courseTitle,
      required this.fromUserId,
      required this.imageUrl,
      required this.imageUploaderCubit});

  @override
  final String message;
  @override
  final String courseTitle;
  @override
  final String fromUserId;
  @override
  final String imageUrl;
  @override
  final ImageUploaderCubit imageUploaderCubit;

  @override
  String toString() {
    return 'ChatEvent.sendImageMessage(message: $message, courseTitle: $courseTitle, fromUserId: $fromUserId, imageUrl: $imageUrl, imageUploaderCubit: $imageUploaderCubit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendImageMessageImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.courseTitle, courseTitle) ||
                other.courseTitle == courseTitle) &&
            (identical(other.fromUserId, fromUserId) ||
                other.fromUserId == fromUserId) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.imageUploaderCubit, imageUploaderCubit) ||
                other.imageUploaderCubit == imageUploaderCubit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, courseTitle, fromUserId,
      imageUrl, imageUploaderCubit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendImageMessageImplCopyWith<_$SendImageMessageImpl> get copyWith =>
      __$$SendImageMessageImplCopyWithImpl<_$SendImageMessageImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            String message, String fromUserId, String courseTitle)
        sendMessage,
    required TResult Function(
            String message,
            String courseTitle,
            String fromUserId,
            String imageUrl,
            ImageUploaderCubit imageUploaderCubit)
        sendImageMessage,
    required TResult Function(String message, String fromUserId,
            String courseTitle, ImageUploaderCubit imageUploaderCubit)
        sendFileMessage,
    required TResult Function() getAllMessages,
    required TResult Function(String courseTitle) getAllMessagesByCourse,
  }) {
    return sendImageMessage(
        message, courseTitle, fromUserId, imageUrl, imageUploaderCubit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String message, String fromUserId, String courseTitle)?
        sendMessage,
    TResult? Function(String message, String courseTitle, String fromUserId,
            String imageUrl, ImageUploaderCubit imageUploaderCubit)?
        sendImageMessage,
    TResult? Function(String message, String fromUserId, String courseTitle,
            ImageUploaderCubit imageUploaderCubit)?
        sendFileMessage,
    TResult? Function()? getAllMessages,
    TResult? Function(String courseTitle)? getAllMessagesByCourse,
  }) {
    return sendImageMessage?.call(
        message, courseTitle, fromUserId, imageUrl, imageUploaderCubit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String message, String fromUserId, String courseTitle)?
        sendMessage,
    TResult Function(String message, String courseTitle, String fromUserId,
            String imageUrl, ImageUploaderCubit imageUploaderCubit)?
        sendImageMessage,
    TResult Function(String message, String fromUserId, String courseTitle,
            ImageUploaderCubit imageUploaderCubit)?
        sendFileMessage,
    TResult Function()? getAllMessages,
    TResult Function(String courseTitle)? getAllMessagesByCourse,
    required TResult orElse(),
  }) {
    if (sendImageMessage != null) {
      return sendImageMessage(
          message, courseTitle, fromUserId, imageUrl, imageUploaderCubit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_SendImageMessage value) sendImageMessage,
    required TResult Function(_SendFileMessage value) sendFileMessage,
    required TResult Function(_GetAllMessages value) getAllMessages,
    required TResult Function(_GetAllMessagesByCourse value)
        getAllMessagesByCourse,
  }) {
    return sendImageMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_SendImageMessage value)? sendImageMessage,
    TResult? Function(_SendFileMessage value)? sendFileMessage,
    TResult? Function(_GetAllMessages value)? getAllMessages,
    TResult? Function(_GetAllMessagesByCourse value)? getAllMessagesByCourse,
  }) {
    return sendImageMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_SendImageMessage value)? sendImageMessage,
    TResult Function(_SendFileMessage value)? sendFileMessage,
    TResult Function(_GetAllMessages value)? getAllMessages,
    TResult Function(_GetAllMessagesByCourse value)? getAllMessagesByCourse,
    required TResult orElse(),
  }) {
    if (sendImageMessage != null) {
      return sendImageMessage(this);
    }
    return orElse();
  }
}

abstract class _SendImageMessage implements ChatEvent {
  const factory _SendImageMessage(
          {required final String message,
          required final String courseTitle,
          required final String fromUserId,
          required final String imageUrl,
          required final ImageUploaderCubit imageUploaderCubit}) =
      _$SendImageMessageImpl;

  String get message;
  String get courseTitle;
  String get fromUserId;
  String get imageUrl;
  ImageUploaderCubit get imageUploaderCubit;
  @JsonKey(ignore: true)
  _$$SendImageMessageImplCopyWith<_$SendImageMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SendFileMessageImplCopyWith<$Res> {
  factory _$$SendFileMessageImplCopyWith(_$SendFileMessageImpl value,
          $Res Function(_$SendFileMessageImpl) then) =
      __$$SendFileMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String message,
      String fromUserId,
      String courseTitle,
      ImageUploaderCubit imageUploaderCubit});
}

/// @nodoc
class __$$SendFileMessageImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$SendFileMessageImpl>
    implements _$$SendFileMessageImplCopyWith<$Res> {
  __$$SendFileMessageImplCopyWithImpl(
      _$SendFileMessageImpl _value, $Res Function(_$SendFileMessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? fromUserId = null,
    Object? courseTitle = null,
    Object? imageUploaderCubit = null,
  }) {
    return _then(_$SendFileMessageImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      fromUserId: null == fromUserId
          ? _value.fromUserId
          : fromUserId // ignore: cast_nullable_to_non_nullable
              as String,
      courseTitle: null == courseTitle
          ? _value.courseTitle
          : courseTitle // ignore: cast_nullable_to_non_nullable
              as String,
      imageUploaderCubit: null == imageUploaderCubit
          ? _value.imageUploaderCubit
          : imageUploaderCubit // ignore: cast_nullable_to_non_nullable
              as ImageUploaderCubit,
    ));
  }
}

/// @nodoc

class _$SendFileMessageImpl implements _SendFileMessage {
  const _$SendFileMessageImpl(
      {required this.message,
      required this.fromUserId,
      required this.courseTitle,
      required this.imageUploaderCubit});

  @override
  final String message;
  @override
  final String fromUserId;
  @override
  final String courseTitle;
  @override
  final ImageUploaderCubit imageUploaderCubit;

  @override
  String toString() {
    return 'ChatEvent.sendFileMessage(message: $message, fromUserId: $fromUserId, courseTitle: $courseTitle, imageUploaderCubit: $imageUploaderCubit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendFileMessageImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.fromUserId, fromUserId) ||
                other.fromUserId == fromUserId) &&
            (identical(other.courseTitle, courseTitle) ||
                other.courseTitle == courseTitle) &&
            (identical(other.imageUploaderCubit, imageUploaderCubit) ||
                other.imageUploaderCubit == imageUploaderCubit));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, message, fromUserId, courseTitle, imageUploaderCubit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendFileMessageImplCopyWith<_$SendFileMessageImpl> get copyWith =>
      __$$SendFileMessageImplCopyWithImpl<_$SendFileMessageImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            String message, String fromUserId, String courseTitle)
        sendMessage,
    required TResult Function(
            String message,
            String courseTitle,
            String fromUserId,
            String imageUrl,
            ImageUploaderCubit imageUploaderCubit)
        sendImageMessage,
    required TResult Function(String message, String fromUserId,
            String courseTitle, ImageUploaderCubit imageUploaderCubit)
        sendFileMessage,
    required TResult Function() getAllMessages,
    required TResult Function(String courseTitle) getAllMessagesByCourse,
  }) {
    return sendFileMessage(
        message, fromUserId, courseTitle, imageUploaderCubit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String message, String fromUserId, String courseTitle)?
        sendMessage,
    TResult? Function(String message, String courseTitle, String fromUserId,
            String imageUrl, ImageUploaderCubit imageUploaderCubit)?
        sendImageMessage,
    TResult? Function(String message, String fromUserId, String courseTitle,
            ImageUploaderCubit imageUploaderCubit)?
        sendFileMessage,
    TResult? Function()? getAllMessages,
    TResult? Function(String courseTitle)? getAllMessagesByCourse,
  }) {
    return sendFileMessage?.call(
        message, fromUserId, courseTitle, imageUploaderCubit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String message, String fromUserId, String courseTitle)?
        sendMessage,
    TResult Function(String message, String courseTitle, String fromUserId,
            String imageUrl, ImageUploaderCubit imageUploaderCubit)?
        sendImageMessage,
    TResult Function(String message, String fromUserId, String courseTitle,
            ImageUploaderCubit imageUploaderCubit)?
        sendFileMessage,
    TResult Function()? getAllMessages,
    TResult Function(String courseTitle)? getAllMessagesByCourse,
    required TResult orElse(),
  }) {
    if (sendFileMessage != null) {
      return sendFileMessage(
          message, fromUserId, courseTitle, imageUploaderCubit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_SendImageMessage value) sendImageMessage,
    required TResult Function(_SendFileMessage value) sendFileMessage,
    required TResult Function(_GetAllMessages value) getAllMessages,
    required TResult Function(_GetAllMessagesByCourse value)
        getAllMessagesByCourse,
  }) {
    return sendFileMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_SendImageMessage value)? sendImageMessage,
    TResult? Function(_SendFileMessage value)? sendFileMessage,
    TResult? Function(_GetAllMessages value)? getAllMessages,
    TResult? Function(_GetAllMessagesByCourse value)? getAllMessagesByCourse,
  }) {
    return sendFileMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_SendImageMessage value)? sendImageMessage,
    TResult Function(_SendFileMessage value)? sendFileMessage,
    TResult Function(_GetAllMessages value)? getAllMessages,
    TResult Function(_GetAllMessagesByCourse value)? getAllMessagesByCourse,
    required TResult orElse(),
  }) {
    if (sendFileMessage != null) {
      return sendFileMessage(this);
    }
    return orElse();
  }
}

abstract class _SendFileMessage implements ChatEvent {
  const factory _SendFileMessage(
          {required final String message,
          required final String fromUserId,
          required final String courseTitle,
          required final ImageUploaderCubit imageUploaderCubit}) =
      _$SendFileMessageImpl;

  String get message;
  String get fromUserId;
  String get courseTitle;
  ImageUploaderCubit get imageUploaderCubit;
  @JsonKey(ignore: true)
  _$$SendFileMessageImplCopyWith<_$SendFileMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetAllMessagesImplCopyWith<$Res> {
  factory _$$GetAllMessagesImplCopyWith(_$GetAllMessagesImpl value,
          $Res Function(_$GetAllMessagesImpl) then) =
      __$$GetAllMessagesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAllMessagesImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$GetAllMessagesImpl>
    implements _$$GetAllMessagesImplCopyWith<$Res> {
  __$$GetAllMessagesImplCopyWithImpl(
      _$GetAllMessagesImpl _value, $Res Function(_$GetAllMessagesImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetAllMessagesImpl implements _GetAllMessages {
  const _$GetAllMessagesImpl();

  @override
  String toString() {
    return 'ChatEvent.getAllMessages()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetAllMessagesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            String message, String fromUserId, String courseTitle)
        sendMessage,
    required TResult Function(
            String message,
            String courseTitle,
            String fromUserId,
            String imageUrl,
            ImageUploaderCubit imageUploaderCubit)
        sendImageMessage,
    required TResult Function(String message, String fromUserId,
            String courseTitle, ImageUploaderCubit imageUploaderCubit)
        sendFileMessage,
    required TResult Function() getAllMessages,
    required TResult Function(String courseTitle) getAllMessagesByCourse,
  }) {
    return getAllMessages();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String message, String fromUserId, String courseTitle)?
        sendMessage,
    TResult? Function(String message, String courseTitle, String fromUserId,
            String imageUrl, ImageUploaderCubit imageUploaderCubit)?
        sendImageMessage,
    TResult? Function(String message, String fromUserId, String courseTitle,
            ImageUploaderCubit imageUploaderCubit)?
        sendFileMessage,
    TResult? Function()? getAllMessages,
    TResult? Function(String courseTitle)? getAllMessagesByCourse,
  }) {
    return getAllMessages?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String message, String fromUserId, String courseTitle)?
        sendMessage,
    TResult Function(String message, String courseTitle, String fromUserId,
            String imageUrl, ImageUploaderCubit imageUploaderCubit)?
        sendImageMessage,
    TResult Function(String message, String fromUserId, String courseTitle,
            ImageUploaderCubit imageUploaderCubit)?
        sendFileMessage,
    TResult Function()? getAllMessages,
    TResult Function(String courseTitle)? getAllMessagesByCourse,
    required TResult orElse(),
  }) {
    if (getAllMessages != null) {
      return getAllMessages();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_SendImageMessage value) sendImageMessage,
    required TResult Function(_SendFileMessage value) sendFileMessage,
    required TResult Function(_GetAllMessages value) getAllMessages,
    required TResult Function(_GetAllMessagesByCourse value)
        getAllMessagesByCourse,
  }) {
    return getAllMessages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_SendImageMessage value)? sendImageMessage,
    TResult? Function(_SendFileMessage value)? sendFileMessage,
    TResult? Function(_GetAllMessages value)? getAllMessages,
    TResult? Function(_GetAllMessagesByCourse value)? getAllMessagesByCourse,
  }) {
    return getAllMessages?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_SendImageMessage value)? sendImageMessage,
    TResult Function(_SendFileMessage value)? sendFileMessage,
    TResult Function(_GetAllMessages value)? getAllMessages,
    TResult Function(_GetAllMessagesByCourse value)? getAllMessagesByCourse,
    required TResult orElse(),
  }) {
    if (getAllMessages != null) {
      return getAllMessages(this);
    }
    return orElse();
  }
}

abstract class _GetAllMessages implements ChatEvent {
  const factory _GetAllMessages() = _$GetAllMessagesImpl;
}

/// @nodoc
abstract class _$$GetAllMessagesByCourseImplCopyWith<$Res> {
  factory _$$GetAllMessagesByCourseImplCopyWith(
          _$GetAllMessagesByCourseImpl value,
          $Res Function(_$GetAllMessagesByCourseImpl) then) =
      __$$GetAllMessagesByCourseImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String courseTitle});
}

/// @nodoc
class __$$GetAllMessagesByCourseImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$GetAllMessagesByCourseImpl>
    implements _$$GetAllMessagesByCourseImplCopyWith<$Res> {
  __$$GetAllMessagesByCourseImplCopyWithImpl(
      _$GetAllMessagesByCourseImpl _value,
      $Res Function(_$GetAllMessagesByCourseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courseTitle = null,
  }) {
    return _then(_$GetAllMessagesByCourseImpl(
      null == courseTitle
          ? _value.courseTitle
          : courseTitle // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetAllMessagesByCourseImpl implements _GetAllMessagesByCourse {
  const _$GetAllMessagesByCourseImpl(this.courseTitle);

  @override
  final String courseTitle;

  @override
  String toString() {
    return 'ChatEvent.getAllMessagesByCourse(courseTitle: $courseTitle)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAllMessagesByCourseImpl &&
            (identical(other.courseTitle, courseTitle) ||
                other.courseTitle == courseTitle));
  }

  @override
  int get hashCode => Object.hash(runtimeType, courseTitle);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAllMessagesByCourseImplCopyWith<_$GetAllMessagesByCourseImpl>
      get copyWith => __$$GetAllMessagesByCourseImplCopyWithImpl<
          _$GetAllMessagesByCourseImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            String message, String fromUserId, String courseTitle)
        sendMessage,
    required TResult Function(
            String message,
            String courseTitle,
            String fromUserId,
            String imageUrl,
            ImageUploaderCubit imageUploaderCubit)
        sendImageMessage,
    required TResult Function(String message, String fromUserId,
            String courseTitle, ImageUploaderCubit imageUploaderCubit)
        sendFileMessage,
    required TResult Function() getAllMessages,
    required TResult Function(String courseTitle) getAllMessagesByCourse,
  }) {
    return getAllMessagesByCourse(courseTitle);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String message, String fromUserId, String courseTitle)?
        sendMessage,
    TResult? Function(String message, String courseTitle, String fromUserId,
            String imageUrl, ImageUploaderCubit imageUploaderCubit)?
        sendImageMessage,
    TResult? Function(String message, String fromUserId, String courseTitle,
            ImageUploaderCubit imageUploaderCubit)?
        sendFileMessage,
    TResult? Function()? getAllMessages,
    TResult? Function(String courseTitle)? getAllMessagesByCourse,
  }) {
    return getAllMessagesByCourse?.call(courseTitle);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String message, String fromUserId, String courseTitle)?
        sendMessage,
    TResult Function(String message, String courseTitle, String fromUserId,
            String imageUrl, ImageUploaderCubit imageUploaderCubit)?
        sendImageMessage,
    TResult Function(String message, String fromUserId, String courseTitle,
            ImageUploaderCubit imageUploaderCubit)?
        sendFileMessage,
    TResult Function()? getAllMessages,
    TResult Function(String courseTitle)? getAllMessagesByCourse,
    required TResult orElse(),
  }) {
    if (getAllMessagesByCourse != null) {
      return getAllMessagesByCourse(courseTitle);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_SendImageMessage value) sendImageMessage,
    required TResult Function(_SendFileMessage value) sendFileMessage,
    required TResult Function(_GetAllMessages value) getAllMessages,
    required TResult Function(_GetAllMessagesByCourse value)
        getAllMessagesByCourse,
  }) {
    return getAllMessagesByCourse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_SendImageMessage value)? sendImageMessage,
    TResult? Function(_SendFileMessage value)? sendFileMessage,
    TResult? Function(_GetAllMessages value)? getAllMessages,
    TResult? Function(_GetAllMessagesByCourse value)? getAllMessagesByCourse,
  }) {
    return getAllMessagesByCourse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_SendImageMessage value)? sendImageMessage,
    TResult Function(_SendFileMessage value)? sendFileMessage,
    TResult Function(_GetAllMessages value)? getAllMessages,
    TResult Function(_GetAllMessagesByCourse value)? getAllMessagesByCourse,
    required TResult orElse(),
  }) {
    if (getAllMessagesByCourse != null) {
      return getAllMessagesByCourse(this);
    }
    return orElse();
  }
}

abstract class _GetAllMessagesByCourse implements ChatEvent {
  const factory _GetAllMessagesByCourse(final String courseTitle) =
      _$GetAllMessagesByCourseImpl;

  String get courseTitle;
  @JsonKey(ignore: true)
  _$$GetAllMessagesByCourseImplCopyWith<_$GetAllMessagesByCourseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChatState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Message> allMessages) allMessagesLoaded,
    required TResult Function() messageFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Message> allMessages)? allMessagesLoaded,
    TResult? Function()? messageFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Message> allMessages)? allMessagesLoaded,
    TResult Function()? messageFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AllMessagesLoaded value) allMessagesLoaded,
    required TResult Function(_MessageFailure value) messageFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_AllMessagesLoaded value)? allMessagesLoaded,
    TResult? Function(_MessageFailure value)? messageFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AllMessagesLoaded value)? allMessagesLoaded,
    TResult Function(_MessageFailure value)? messageFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatStateCopyWith<$Res> {
  factory $ChatStateCopyWith(ChatState value, $Res Function(ChatState) then) =
      _$ChatStateCopyWithImpl<$Res, ChatState>;
}

/// @nodoc
class _$ChatStateCopyWithImpl<$Res, $Val extends ChatState>
    implements $ChatStateCopyWith<$Res> {
  _$ChatStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'ChatState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Message> allMessages) allMessagesLoaded,
    required TResult Function() messageFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Message> allMessages)? allMessagesLoaded,
    TResult? Function()? messageFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Message> allMessages)? allMessagesLoaded,
    TResult Function()? messageFailure,
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
    required TResult Function(_AllMessagesLoaded value) allMessagesLoaded,
    required TResult Function(_MessageFailure value) messageFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_AllMessagesLoaded value)? allMessagesLoaded,
    TResult? Function(_MessageFailure value)? messageFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AllMessagesLoaded value)? allMessagesLoaded,
    TResult Function(_MessageFailure value)? messageFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ChatState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$AllMessagesLoadedImplCopyWith<$Res> {
  factory _$$AllMessagesLoadedImplCopyWith(_$AllMessagesLoadedImpl value,
          $Res Function(_$AllMessagesLoadedImpl) then) =
      __$$AllMessagesLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Message> allMessages});
}

/// @nodoc
class __$$AllMessagesLoadedImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$AllMessagesLoadedImpl>
    implements _$$AllMessagesLoadedImplCopyWith<$Res> {
  __$$AllMessagesLoadedImplCopyWithImpl(_$AllMessagesLoadedImpl _value,
      $Res Function(_$AllMessagesLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allMessages = null,
  }) {
    return _then(_$AllMessagesLoadedImpl(
      allMessages: null == allMessages
          ? _value._allMessages
          : allMessages // ignore: cast_nullable_to_non_nullable
              as List<Message>,
    ));
  }
}

/// @nodoc

class _$AllMessagesLoadedImpl implements _AllMessagesLoaded {
  const _$AllMessagesLoadedImpl({required final List<Message> allMessages})
      : _allMessages = allMessages;

  final List<Message> _allMessages;
  @override
  List<Message> get allMessages {
    if (_allMessages is EqualUnmodifiableListView) return _allMessages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allMessages);
  }

  @override
  String toString() {
    return 'ChatState.allMessagesLoaded(allMessages: $allMessages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AllMessagesLoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._allMessages, _allMessages));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_allMessages));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AllMessagesLoadedImplCopyWith<_$AllMessagesLoadedImpl> get copyWith =>
      __$$AllMessagesLoadedImplCopyWithImpl<_$AllMessagesLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Message> allMessages) allMessagesLoaded,
    required TResult Function() messageFailure,
  }) {
    return allMessagesLoaded(allMessages);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Message> allMessages)? allMessagesLoaded,
    TResult? Function()? messageFailure,
  }) {
    return allMessagesLoaded?.call(allMessages);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Message> allMessages)? allMessagesLoaded,
    TResult Function()? messageFailure,
    required TResult orElse(),
  }) {
    if (allMessagesLoaded != null) {
      return allMessagesLoaded(allMessages);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AllMessagesLoaded value) allMessagesLoaded,
    required TResult Function(_MessageFailure value) messageFailure,
  }) {
    return allMessagesLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_AllMessagesLoaded value)? allMessagesLoaded,
    TResult? Function(_MessageFailure value)? messageFailure,
  }) {
    return allMessagesLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AllMessagesLoaded value)? allMessagesLoaded,
    TResult Function(_MessageFailure value)? messageFailure,
    required TResult orElse(),
  }) {
    if (allMessagesLoaded != null) {
      return allMessagesLoaded(this);
    }
    return orElse();
  }
}

abstract class _AllMessagesLoaded implements ChatState {
  const factory _AllMessagesLoaded({required final List<Message> allMessages}) =
      _$AllMessagesLoadedImpl;

  List<Message> get allMessages;
  @JsonKey(ignore: true)
  _$$AllMessagesLoadedImplCopyWith<_$AllMessagesLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MessageFailureImplCopyWith<$Res> {
  factory _$$MessageFailureImplCopyWith(_$MessageFailureImpl value,
          $Res Function(_$MessageFailureImpl) then) =
      __$$MessageFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MessageFailureImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$MessageFailureImpl>
    implements _$$MessageFailureImplCopyWith<$Res> {
  __$$MessageFailureImplCopyWithImpl(
      _$MessageFailureImpl _value, $Res Function(_$MessageFailureImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MessageFailureImpl implements _MessageFailure {
  const _$MessageFailureImpl();

  @override
  String toString() {
    return 'ChatState.messageFailure()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MessageFailureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Message> allMessages) allMessagesLoaded,
    required TResult Function() messageFailure,
  }) {
    return messageFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Message> allMessages)? allMessagesLoaded,
    TResult? Function()? messageFailure,
  }) {
    return messageFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Message> allMessages)? allMessagesLoaded,
    TResult Function()? messageFailure,
    required TResult orElse(),
  }) {
    if (messageFailure != null) {
      return messageFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AllMessagesLoaded value) allMessagesLoaded,
    required TResult Function(_MessageFailure value) messageFailure,
  }) {
    return messageFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_AllMessagesLoaded value)? allMessagesLoaded,
    TResult? Function(_MessageFailure value)? messageFailure,
  }) {
    return messageFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AllMessagesLoaded value)? allMessagesLoaded,
    TResult Function(_MessageFailure value)? messageFailure,
    required TResult orElse(),
  }) {
    if (messageFailure != null) {
      return messageFailure(this);
    }
    return orElse();
  }
}

abstract class _MessageFailure implements ChatState {
  const factory _MessageFailure() = _$MessageFailureImpl;
}
