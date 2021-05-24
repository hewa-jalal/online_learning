// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'chat_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ChatEventTearOff {
  const _$ChatEventTearOff();

  _Started started() {
    return const _Started();
  }

  _SendMessage sendMessage(
      {required String message, required String fromUserId}) {
    return _SendMessage(
      message: message,
      fromUserId: fromUserId,
    );
  }

  _SendImageMessage sendImageMessage(
      {required String message,
      required String fromUserId,
      required String imageUrl,
      required ImageUploaderCubit imageUploaderCubit}) {
    return _SendImageMessage(
      message: message,
      fromUserId: fromUserId,
      imageUrl: imageUrl,
      imageUploaderCubit: imageUploaderCubit,
    );
  }

  _SendFileMessage sendFileMessage(
      {required String message,
      required String fromUserId,
      required ImageUploaderCubit imageUploaderCubit}) {
    return _SendFileMessage(
      message: message,
      fromUserId: fromUserId,
      imageUploaderCubit: imageUploaderCubit,
    );
  }

  _GetAllMessages getAllMessages() {
    return const _GetAllMessages();
  }
}

/// @nodoc
const $ChatEvent = _$ChatEventTearOff();

/// @nodoc
mixin _$ChatEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String message, String fromUserId) sendMessage,
    required TResult Function(String message, String fromUserId,
            String imageUrl, ImageUploaderCubit imageUploaderCubit)
        sendImageMessage,
    required TResult Function(String message, String fromUserId,
            ImageUploaderCubit imageUploaderCubit)
        sendFileMessage,
    required TResult Function() getAllMessages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String message, String fromUserId)? sendMessage,
    TResult Function(String message, String fromUserId, String imageUrl,
            ImageUploaderCubit imageUploaderCubit)?
        sendImageMessage,
    TResult Function(String message, String fromUserId,
            ImageUploaderCubit imageUploaderCubit)?
        sendFileMessage,
    TResult Function()? getAllMessages,
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
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_SendImageMessage value)? sendImageMessage,
    TResult Function(_SendFileMessage value)? sendFileMessage,
    TResult Function(_GetAllMessages value)? getAllMessages,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatEventCopyWith<$Res> {
  factory $ChatEventCopyWith(ChatEvent value, $Res Function(ChatEvent) then) =
      _$ChatEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChatEventCopyWithImpl<$Res> implements $ChatEventCopyWith<$Res> {
  _$ChatEventCopyWithImpl(this._value, this._then);

  final ChatEvent _value;
  // ignore: unused_field
  final $Res Function(ChatEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$ChatEventCopyWithImpl<$Res>
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
    return 'ChatEvent.started()';
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
    required TResult Function(String message, String fromUserId) sendMessage,
    required TResult Function(String message, String fromUserId,
            String imageUrl, ImageUploaderCubit imageUploaderCubit)
        sendImageMessage,
    required TResult Function(String message, String fromUserId,
            ImageUploaderCubit imageUploaderCubit)
        sendFileMessage,
    required TResult Function() getAllMessages,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String message, String fromUserId)? sendMessage,
    TResult Function(String message, String fromUserId, String imageUrl,
            ImageUploaderCubit imageUploaderCubit)?
        sendImageMessage,
    TResult Function(String message, String fromUserId,
            ImageUploaderCubit imageUploaderCubit)?
        sendFileMessage,
    TResult Function()? getAllMessages,
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
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_SendImageMessage value)? sendImageMessage,
    TResult Function(_SendFileMessage value)? sendFileMessage,
    TResult Function(_GetAllMessages value)? getAllMessages,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ChatEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$SendMessageCopyWith<$Res> {
  factory _$SendMessageCopyWith(
          _SendMessage value, $Res Function(_SendMessage) then) =
      __$SendMessageCopyWithImpl<$Res>;
  $Res call({String message, String fromUserId});
}

/// @nodoc
class __$SendMessageCopyWithImpl<$Res> extends _$ChatEventCopyWithImpl<$Res>
    implements _$SendMessageCopyWith<$Res> {
  __$SendMessageCopyWithImpl(
      _SendMessage _value, $Res Function(_SendMessage) _then)
      : super(_value, (v) => _then(v as _SendMessage));

  @override
  _SendMessage get _value => super._value as _SendMessage;

  @override
  $Res call({
    Object? message = freezed,
    Object? fromUserId = freezed,
  }) {
    return _then(_SendMessage(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      fromUserId: fromUserId == freezed
          ? _value.fromUserId
          : fromUserId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SendMessage implements _SendMessage {
  const _$_SendMessage({required this.message, required this.fromUserId});

  @override
  final String message;
  @override
  final String fromUserId;

  @override
  String toString() {
    return 'ChatEvent.sendMessage(message: $message, fromUserId: $fromUserId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SendMessage &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.fromUserId, fromUserId) ||
                const DeepCollectionEquality()
                    .equals(other.fromUserId, fromUserId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(fromUserId);

  @JsonKey(ignore: true)
  @override
  _$SendMessageCopyWith<_SendMessage> get copyWith =>
      __$SendMessageCopyWithImpl<_SendMessage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String message, String fromUserId) sendMessage,
    required TResult Function(String message, String fromUserId,
            String imageUrl, ImageUploaderCubit imageUploaderCubit)
        sendImageMessage,
    required TResult Function(String message, String fromUserId,
            ImageUploaderCubit imageUploaderCubit)
        sendFileMessage,
    required TResult Function() getAllMessages,
  }) {
    return sendMessage(message, fromUserId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String message, String fromUserId)? sendMessage,
    TResult Function(String message, String fromUserId, String imageUrl,
            ImageUploaderCubit imageUploaderCubit)?
        sendImageMessage,
    TResult Function(String message, String fromUserId,
            ImageUploaderCubit imageUploaderCubit)?
        sendFileMessage,
    TResult Function()? getAllMessages,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(message, fromUserId);
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
  }) {
    return sendMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_SendImageMessage value)? sendImageMessage,
    TResult Function(_SendFileMessage value)? sendFileMessage,
    TResult Function(_GetAllMessages value)? getAllMessages,
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
      {required String message, required String fromUserId}) = _$_SendMessage;

  String get message => throw _privateConstructorUsedError;
  String get fromUserId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SendMessageCopyWith<_SendMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SendImageMessageCopyWith<$Res> {
  factory _$SendImageMessageCopyWith(
          _SendImageMessage value, $Res Function(_SendImageMessage) then) =
      __$SendImageMessageCopyWithImpl<$Res>;
  $Res call(
      {String message,
      String fromUserId,
      String imageUrl,
      ImageUploaderCubit imageUploaderCubit});
}

/// @nodoc
class __$SendImageMessageCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res>
    implements _$SendImageMessageCopyWith<$Res> {
  __$SendImageMessageCopyWithImpl(
      _SendImageMessage _value, $Res Function(_SendImageMessage) _then)
      : super(_value, (v) => _then(v as _SendImageMessage));

  @override
  _SendImageMessage get _value => super._value as _SendImageMessage;

  @override
  $Res call({
    Object? message = freezed,
    Object? fromUserId = freezed,
    Object? imageUrl = freezed,
    Object? imageUploaderCubit = freezed,
  }) {
    return _then(_SendImageMessage(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      fromUserId: fromUserId == freezed
          ? _value.fromUserId
          : fromUserId // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      imageUploaderCubit: imageUploaderCubit == freezed
          ? _value.imageUploaderCubit
          : imageUploaderCubit // ignore: cast_nullable_to_non_nullable
              as ImageUploaderCubit,
    ));
  }
}

/// @nodoc

class _$_SendImageMessage implements _SendImageMessage {
  const _$_SendImageMessage(
      {required this.message,
      required this.fromUserId,
      required this.imageUrl,
      required this.imageUploaderCubit});

  @override
  final String message;
  @override
  final String fromUserId;
  @override
  final String imageUrl;
  @override
  final ImageUploaderCubit imageUploaderCubit;

  @override
  String toString() {
    return 'ChatEvent.sendImageMessage(message: $message, fromUserId: $fromUserId, imageUrl: $imageUrl, imageUploaderCubit: $imageUploaderCubit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SendImageMessage &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.fromUserId, fromUserId) ||
                const DeepCollectionEquality()
                    .equals(other.fromUserId, fromUserId)) &&
            (identical(other.imageUrl, imageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrl, imageUrl)) &&
            (identical(other.imageUploaderCubit, imageUploaderCubit) ||
                const DeepCollectionEquality()
                    .equals(other.imageUploaderCubit, imageUploaderCubit)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(fromUserId) ^
      const DeepCollectionEquality().hash(imageUrl) ^
      const DeepCollectionEquality().hash(imageUploaderCubit);

  @JsonKey(ignore: true)
  @override
  _$SendImageMessageCopyWith<_SendImageMessage> get copyWith =>
      __$SendImageMessageCopyWithImpl<_SendImageMessage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String message, String fromUserId) sendMessage,
    required TResult Function(String message, String fromUserId,
            String imageUrl, ImageUploaderCubit imageUploaderCubit)
        sendImageMessage,
    required TResult Function(String message, String fromUserId,
            ImageUploaderCubit imageUploaderCubit)
        sendFileMessage,
    required TResult Function() getAllMessages,
  }) {
    return sendImageMessage(message, fromUserId, imageUrl, imageUploaderCubit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String message, String fromUserId)? sendMessage,
    TResult Function(String message, String fromUserId, String imageUrl,
            ImageUploaderCubit imageUploaderCubit)?
        sendImageMessage,
    TResult Function(String message, String fromUserId,
            ImageUploaderCubit imageUploaderCubit)?
        sendFileMessage,
    TResult Function()? getAllMessages,
    required TResult orElse(),
  }) {
    if (sendImageMessage != null) {
      return sendImageMessage(
          message, fromUserId, imageUrl, imageUploaderCubit);
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
  }) {
    return sendImageMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_SendImageMessage value)? sendImageMessage,
    TResult Function(_SendFileMessage value)? sendFileMessage,
    TResult Function(_GetAllMessages value)? getAllMessages,
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
      {required String message,
      required String fromUserId,
      required String imageUrl,
      required ImageUploaderCubit imageUploaderCubit}) = _$_SendImageMessage;

  String get message => throw _privateConstructorUsedError;
  String get fromUserId => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  ImageUploaderCubit get imageUploaderCubit =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SendImageMessageCopyWith<_SendImageMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SendFileMessageCopyWith<$Res> {
  factory _$SendFileMessageCopyWith(
          _SendFileMessage value, $Res Function(_SendFileMessage) then) =
      __$SendFileMessageCopyWithImpl<$Res>;
  $Res call(
      {String message,
      String fromUserId,
      ImageUploaderCubit imageUploaderCubit});
}

/// @nodoc
class __$SendFileMessageCopyWithImpl<$Res> extends _$ChatEventCopyWithImpl<$Res>
    implements _$SendFileMessageCopyWith<$Res> {
  __$SendFileMessageCopyWithImpl(
      _SendFileMessage _value, $Res Function(_SendFileMessage) _then)
      : super(_value, (v) => _then(v as _SendFileMessage));

  @override
  _SendFileMessage get _value => super._value as _SendFileMessage;

  @override
  $Res call({
    Object? message = freezed,
    Object? fromUserId = freezed,
    Object? imageUploaderCubit = freezed,
  }) {
    return _then(_SendFileMessage(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      fromUserId: fromUserId == freezed
          ? _value.fromUserId
          : fromUserId // ignore: cast_nullable_to_non_nullable
              as String,
      imageUploaderCubit: imageUploaderCubit == freezed
          ? _value.imageUploaderCubit
          : imageUploaderCubit // ignore: cast_nullable_to_non_nullable
              as ImageUploaderCubit,
    ));
  }
}

/// @nodoc

class _$_SendFileMessage implements _SendFileMessage {
  const _$_SendFileMessage(
      {required this.message,
      required this.fromUserId,
      required this.imageUploaderCubit});

  @override
  final String message;
  @override
  final String fromUserId;
  @override
  final ImageUploaderCubit imageUploaderCubit;

  @override
  String toString() {
    return 'ChatEvent.sendFileMessage(message: $message, fromUserId: $fromUserId, imageUploaderCubit: $imageUploaderCubit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SendFileMessage &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.fromUserId, fromUserId) ||
                const DeepCollectionEquality()
                    .equals(other.fromUserId, fromUserId)) &&
            (identical(other.imageUploaderCubit, imageUploaderCubit) ||
                const DeepCollectionEquality()
                    .equals(other.imageUploaderCubit, imageUploaderCubit)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(fromUserId) ^
      const DeepCollectionEquality().hash(imageUploaderCubit);

  @JsonKey(ignore: true)
  @override
  _$SendFileMessageCopyWith<_SendFileMessage> get copyWith =>
      __$SendFileMessageCopyWithImpl<_SendFileMessage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String message, String fromUserId) sendMessage,
    required TResult Function(String message, String fromUserId,
            String imageUrl, ImageUploaderCubit imageUploaderCubit)
        sendImageMessage,
    required TResult Function(String message, String fromUserId,
            ImageUploaderCubit imageUploaderCubit)
        sendFileMessage,
    required TResult Function() getAllMessages,
  }) {
    return sendFileMessage(message, fromUserId, imageUploaderCubit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String message, String fromUserId)? sendMessage,
    TResult Function(String message, String fromUserId, String imageUrl,
            ImageUploaderCubit imageUploaderCubit)?
        sendImageMessage,
    TResult Function(String message, String fromUserId,
            ImageUploaderCubit imageUploaderCubit)?
        sendFileMessage,
    TResult Function()? getAllMessages,
    required TResult orElse(),
  }) {
    if (sendFileMessage != null) {
      return sendFileMessage(message, fromUserId, imageUploaderCubit);
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
  }) {
    return sendFileMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_SendImageMessage value)? sendImageMessage,
    TResult Function(_SendFileMessage value)? sendFileMessage,
    TResult Function(_GetAllMessages value)? getAllMessages,
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
      {required String message,
      required String fromUserId,
      required ImageUploaderCubit imageUploaderCubit}) = _$_SendFileMessage;

  String get message => throw _privateConstructorUsedError;
  String get fromUserId => throw _privateConstructorUsedError;
  ImageUploaderCubit get imageUploaderCubit =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SendFileMessageCopyWith<_SendFileMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetAllMessagesCopyWith<$Res> {
  factory _$GetAllMessagesCopyWith(
          _GetAllMessages value, $Res Function(_GetAllMessages) then) =
      __$GetAllMessagesCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetAllMessagesCopyWithImpl<$Res> extends _$ChatEventCopyWithImpl<$Res>
    implements _$GetAllMessagesCopyWith<$Res> {
  __$GetAllMessagesCopyWithImpl(
      _GetAllMessages _value, $Res Function(_GetAllMessages) _then)
      : super(_value, (v) => _then(v as _GetAllMessages));

  @override
  _GetAllMessages get _value => super._value as _GetAllMessages;
}

/// @nodoc

class _$_GetAllMessages implements _GetAllMessages {
  const _$_GetAllMessages();

  @override
  String toString() {
    return 'ChatEvent.getAllMessages()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GetAllMessages);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String message, String fromUserId) sendMessage,
    required TResult Function(String message, String fromUserId,
            String imageUrl, ImageUploaderCubit imageUploaderCubit)
        sendImageMessage,
    required TResult Function(String message, String fromUserId,
            ImageUploaderCubit imageUploaderCubit)
        sendFileMessage,
    required TResult Function() getAllMessages,
  }) {
    return getAllMessages();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String message, String fromUserId)? sendMessage,
    TResult Function(String message, String fromUserId, String imageUrl,
            ImageUploaderCubit imageUploaderCubit)?
        sendImageMessage,
    TResult Function(String message, String fromUserId,
            ImageUploaderCubit imageUploaderCubit)?
        sendFileMessage,
    TResult Function()? getAllMessages,
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
  }) {
    return getAllMessages(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_SendImageMessage value)? sendImageMessage,
    TResult Function(_SendFileMessage value)? sendFileMessage,
    TResult Function(_GetAllMessages value)? getAllMessages,
    required TResult orElse(),
  }) {
    if (getAllMessages != null) {
      return getAllMessages(this);
    }
    return orElse();
  }
}

abstract class _GetAllMessages implements ChatEvent {
  const factory _GetAllMessages() = _$_GetAllMessages;
}

/// @nodoc
class _$ChatStateTearOff {
  const _$ChatStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _AllMessagesLoaded allMessagesLoaded({required List<Message> allMessages}) {
    return _AllMessagesLoaded(
      allMessages: allMessages,
    );
  }

  _MessageFailure messageFailure() {
    return const _MessageFailure();
  }
}

/// @nodoc
const $ChatState = _$ChatStateTearOff();

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
      _$ChatStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChatStateCopyWithImpl<$Res> implements $ChatStateCopyWith<$Res> {
  _$ChatStateCopyWithImpl(this._value, this._then);

  final ChatState _value;
  // ignore: unused_field
  final $Res Function(ChatState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$ChatStateCopyWithImpl<$Res>
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
    return 'ChatState.initial()';
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
    required TResult Function(List<Message> allMessages) allMessagesLoaded,
    required TResult Function() messageFailure,
  }) {
    return initial();
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
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$AllMessagesLoadedCopyWith<$Res> {
  factory _$AllMessagesLoadedCopyWith(
          _AllMessagesLoaded value, $Res Function(_AllMessagesLoaded) then) =
      __$AllMessagesLoadedCopyWithImpl<$Res>;
  $Res call({List<Message> allMessages});
}

/// @nodoc
class __$AllMessagesLoadedCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res>
    implements _$AllMessagesLoadedCopyWith<$Res> {
  __$AllMessagesLoadedCopyWithImpl(
      _AllMessagesLoaded _value, $Res Function(_AllMessagesLoaded) _then)
      : super(_value, (v) => _then(v as _AllMessagesLoaded));

  @override
  _AllMessagesLoaded get _value => super._value as _AllMessagesLoaded;

  @override
  $Res call({
    Object? allMessages = freezed,
  }) {
    return _then(_AllMessagesLoaded(
      allMessages: allMessages == freezed
          ? _value.allMessages
          : allMessages // ignore: cast_nullable_to_non_nullable
              as List<Message>,
    ));
  }
}

/// @nodoc

class _$_AllMessagesLoaded implements _AllMessagesLoaded {
  const _$_AllMessagesLoaded({required this.allMessages});

  @override
  final List<Message> allMessages;

  @override
  String toString() {
    return 'ChatState.allMessagesLoaded(allMessages: $allMessages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AllMessagesLoaded &&
            (identical(other.allMessages, allMessages) ||
                const DeepCollectionEquality()
                    .equals(other.allMessages, allMessages)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(allMessages);

  @JsonKey(ignore: true)
  @override
  _$AllMessagesLoadedCopyWith<_AllMessagesLoaded> get copyWith =>
      __$AllMessagesLoadedCopyWithImpl<_AllMessagesLoaded>(this, _$identity);

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
  const factory _AllMessagesLoaded({required List<Message> allMessages}) =
      _$_AllMessagesLoaded;

  List<Message> get allMessages => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$AllMessagesLoadedCopyWith<_AllMessagesLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$MessageFailureCopyWith<$Res> {
  factory _$MessageFailureCopyWith(
          _MessageFailure value, $Res Function(_MessageFailure) then) =
      __$MessageFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$MessageFailureCopyWithImpl<$Res> extends _$ChatStateCopyWithImpl<$Res>
    implements _$MessageFailureCopyWith<$Res> {
  __$MessageFailureCopyWithImpl(
      _MessageFailure _value, $Res Function(_MessageFailure) _then)
      : super(_value, (v) => _then(v as _MessageFailure));

  @override
  _MessageFailure get _value => super._value as _MessageFailure;
}

/// @nodoc

class _$_MessageFailure implements _MessageFailure {
  const _$_MessageFailure();

  @override
  String toString() {
    return 'ChatState.messageFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _MessageFailure);
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
  const factory _MessageFailure() = _$_MessageFailure;
}
