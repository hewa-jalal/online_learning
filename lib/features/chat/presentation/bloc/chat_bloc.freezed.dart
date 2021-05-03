// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'chat_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ChatEventTearOff {
  const _$ChatEventTearOff();

// ignore: unused_element
  _Started started() {
    return const _Started();
  }

// ignore: unused_element
  _SendMessage sendMessage(
      {@required String message, @required String fromUserId}) {
    return _SendMessage(
      message: message,
      fromUserId: fromUserId,
    );
  }

// ignore: unused_element
  _SendImageMessage sendImageMessage(
      {@required String message,
      @required String fromUserId,
      @required String imageUrl}) {
    return _SendImageMessage(
      message: message,
      fromUserId: fromUserId,
      imageUrl: imageUrl,
    );
  }

// ignore: unused_element
  _GetAllMessages getAllMessages() {
    return const _GetAllMessages();
  }
}

/// @nodoc
// ignore: unused_element
const $ChatEvent = _$ChatEventTearOff();

/// @nodoc
mixin _$ChatEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(),
    @required TResult sendMessage(String message, String fromUserId),
    @required
        TResult sendImageMessage(
            String message, String fromUserId, String imageUrl),
    @required TResult getAllMessages(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult sendMessage(String message, String fromUserId),
    TResult sendImageMessage(
        String message, String fromUserId, String imageUrl),
    TResult getAllMessages(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required TResult sendMessage(_SendMessage value),
    @required TResult sendImageMessage(_SendImageMessage value),
    @required TResult getAllMessages(_GetAllMessages value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult sendMessage(_SendMessage value),
    TResult sendImageMessage(_SendImageMessage value),
    TResult getAllMessages(_GetAllMessages value),
    @required TResult orElse(),
  });
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
  TResult when<TResult extends Object>({
    @required TResult started(),
    @required TResult sendMessage(String message, String fromUserId),
    @required
        TResult sendImageMessage(
            String message, String fromUserId, String imageUrl),
    @required TResult getAllMessages(),
  }) {
    assert(started != null);
    assert(sendMessage != null);
    assert(sendImageMessage != null);
    assert(getAllMessages != null);
    return started();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult sendMessage(String message, String fromUserId),
    TResult sendImageMessage(
        String message, String fromUserId, String imageUrl),
    TResult getAllMessages(),
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
    @required TResult sendMessage(_SendMessage value),
    @required TResult sendImageMessage(_SendImageMessage value),
    @required TResult getAllMessages(_GetAllMessages value),
  }) {
    assert(started != null);
    assert(sendMessage != null);
    assert(sendImageMessage != null);
    assert(getAllMessages != null);
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult sendMessage(_SendMessage value),
    TResult sendImageMessage(_SendImageMessage value),
    TResult getAllMessages(_GetAllMessages value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
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
    Object message = freezed,
    Object fromUserId = freezed,
  }) {
    return _then(_SendMessage(
      message: message == freezed ? _value.message : message as String,
      fromUserId:
          fromUserId == freezed ? _value.fromUserId : fromUserId as String,
    ));
  }
}

/// @nodoc
class _$_SendMessage implements _SendMessage {
  const _$_SendMessage({@required this.message, @required this.fromUserId})
      : assert(message != null),
        assert(fromUserId != null);

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
  TResult when<TResult extends Object>({
    @required TResult started(),
    @required TResult sendMessage(String message, String fromUserId),
    @required
        TResult sendImageMessage(
            String message, String fromUserId, String imageUrl),
    @required TResult getAllMessages(),
  }) {
    assert(started != null);
    assert(sendMessage != null);
    assert(sendImageMessage != null);
    assert(getAllMessages != null);
    return sendMessage(message, fromUserId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult sendMessage(String message, String fromUserId),
    TResult sendImageMessage(
        String message, String fromUserId, String imageUrl),
    TResult getAllMessages(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (sendMessage != null) {
      return sendMessage(message, fromUserId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required TResult sendMessage(_SendMessage value),
    @required TResult sendImageMessage(_SendImageMessage value),
    @required TResult getAllMessages(_GetAllMessages value),
  }) {
    assert(started != null);
    assert(sendMessage != null);
    assert(sendImageMessage != null);
    assert(getAllMessages != null);
    return sendMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult sendMessage(_SendMessage value),
    TResult sendImageMessage(_SendImageMessage value),
    TResult getAllMessages(_GetAllMessages value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (sendMessage != null) {
      return sendMessage(this);
    }
    return orElse();
  }
}

abstract class _SendMessage implements ChatEvent {
  const factory _SendMessage(
      {@required String message, @required String fromUserId}) = _$_SendMessage;

  String get message;
  String get fromUserId;
  @JsonKey(ignore: true)
  _$SendMessageCopyWith<_SendMessage> get copyWith;
}

/// @nodoc
abstract class _$SendImageMessageCopyWith<$Res> {
  factory _$SendImageMessageCopyWith(
          _SendImageMessage value, $Res Function(_SendImageMessage) then) =
      __$SendImageMessageCopyWithImpl<$Res>;
  $Res call({String message, String fromUserId, String imageUrl});
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
    Object message = freezed,
    Object fromUserId = freezed,
    Object imageUrl = freezed,
  }) {
    return _then(_SendImageMessage(
      message: message == freezed ? _value.message : message as String,
      fromUserId:
          fromUserId == freezed ? _value.fromUserId : fromUserId as String,
      imageUrl: imageUrl == freezed ? _value.imageUrl : imageUrl as String,
    ));
  }
}

/// @nodoc
class _$_SendImageMessage implements _SendImageMessage {
  const _$_SendImageMessage(
      {@required this.message,
      @required this.fromUserId,
      @required this.imageUrl})
      : assert(message != null),
        assert(fromUserId != null),
        assert(imageUrl != null);

  @override
  final String message;
  @override
  final String fromUserId;
  @override
  final String imageUrl;

  @override
  String toString() {
    return 'ChatEvent.sendImageMessage(message: $message, fromUserId: $fromUserId, imageUrl: $imageUrl)';
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
                    .equals(other.imageUrl, imageUrl)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(fromUserId) ^
      const DeepCollectionEquality().hash(imageUrl);

  @JsonKey(ignore: true)
  @override
  _$SendImageMessageCopyWith<_SendImageMessage> get copyWith =>
      __$SendImageMessageCopyWithImpl<_SendImageMessage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(),
    @required TResult sendMessage(String message, String fromUserId),
    @required
        TResult sendImageMessage(
            String message, String fromUserId, String imageUrl),
    @required TResult getAllMessages(),
  }) {
    assert(started != null);
    assert(sendMessage != null);
    assert(sendImageMessage != null);
    assert(getAllMessages != null);
    return sendImageMessage(message, fromUserId, imageUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult sendMessage(String message, String fromUserId),
    TResult sendImageMessage(
        String message, String fromUserId, String imageUrl),
    TResult getAllMessages(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (sendImageMessage != null) {
      return sendImageMessage(message, fromUserId, imageUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required TResult sendMessage(_SendMessage value),
    @required TResult sendImageMessage(_SendImageMessage value),
    @required TResult getAllMessages(_GetAllMessages value),
  }) {
    assert(started != null);
    assert(sendMessage != null);
    assert(sendImageMessage != null);
    assert(getAllMessages != null);
    return sendImageMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult sendMessage(_SendMessage value),
    TResult sendImageMessage(_SendImageMessage value),
    TResult getAllMessages(_GetAllMessages value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (sendImageMessage != null) {
      return sendImageMessage(this);
    }
    return orElse();
  }
}

abstract class _SendImageMessage implements ChatEvent {
  const factory _SendImageMessage(
      {@required String message,
      @required String fromUserId,
      @required String imageUrl}) = _$_SendImageMessage;

  String get message;
  String get fromUserId;
  String get imageUrl;
  @JsonKey(ignore: true)
  _$SendImageMessageCopyWith<_SendImageMessage> get copyWith;
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
  TResult when<TResult extends Object>({
    @required TResult started(),
    @required TResult sendMessage(String message, String fromUserId),
    @required
        TResult sendImageMessage(
            String message, String fromUserId, String imageUrl),
    @required TResult getAllMessages(),
  }) {
    assert(started != null);
    assert(sendMessage != null);
    assert(sendImageMessage != null);
    assert(getAllMessages != null);
    return getAllMessages();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult sendMessage(String message, String fromUserId),
    TResult sendImageMessage(
        String message, String fromUserId, String imageUrl),
    TResult getAllMessages(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getAllMessages != null) {
      return getAllMessages();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required TResult sendMessage(_SendMessage value),
    @required TResult sendImageMessage(_SendImageMessage value),
    @required TResult getAllMessages(_GetAllMessages value),
  }) {
    assert(started != null);
    assert(sendMessage != null);
    assert(sendImageMessage != null);
    assert(getAllMessages != null);
    return getAllMessages(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult sendMessage(_SendMessage value),
    TResult sendImageMessage(_SendImageMessage value),
    TResult getAllMessages(_GetAllMessages value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
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

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _AllMessagesLoaded allMessagesLoaded({@required List<Message> allMessages}) {
    return _AllMessagesLoaded(
      allMessages: allMessages,
    );
  }

// ignore: unused_element
  _MessageFailure messageFailure() {
    return const _MessageFailure();
  }
}

/// @nodoc
// ignore: unused_element
const $ChatState = _$ChatStateTearOff();

/// @nodoc
mixin _$ChatState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult allMessagesLoaded(List<Message> allMessages),
    @required TResult messageFailure(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult allMessagesLoaded(List<Message> allMessages),
    TResult messageFailure(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult allMessagesLoaded(_AllMessagesLoaded value),
    @required TResult messageFailure(_MessageFailure value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult allMessagesLoaded(_AllMessagesLoaded value),
    TResult messageFailure(_MessageFailure value),
    @required TResult orElse(),
  });
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
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult allMessagesLoaded(List<Message> allMessages),
    @required TResult messageFailure(),
  }) {
    assert(initial != null);
    assert(allMessagesLoaded != null);
    assert(messageFailure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult allMessagesLoaded(List<Message> allMessages),
    TResult messageFailure(),
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
    @required TResult allMessagesLoaded(_AllMessagesLoaded value),
    @required TResult messageFailure(_MessageFailure value),
  }) {
    assert(initial != null);
    assert(allMessagesLoaded != null);
    assert(messageFailure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult allMessagesLoaded(_AllMessagesLoaded value),
    TResult messageFailure(_MessageFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
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
    Object allMessages = freezed,
  }) {
    return _then(_AllMessagesLoaded(
      allMessages: allMessages == freezed
          ? _value.allMessages
          : allMessages as List<Message>,
    ));
  }
}

/// @nodoc
class _$_AllMessagesLoaded implements _AllMessagesLoaded {
  const _$_AllMessagesLoaded({@required this.allMessages})
      : assert(allMessages != null);

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
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult allMessagesLoaded(List<Message> allMessages),
    @required TResult messageFailure(),
  }) {
    assert(initial != null);
    assert(allMessagesLoaded != null);
    assert(messageFailure != null);
    return allMessagesLoaded(allMessages);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult allMessagesLoaded(List<Message> allMessages),
    TResult messageFailure(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (allMessagesLoaded != null) {
      return allMessagesLoaded(allMessages);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult allMessagesLoaded(_AllMessagesLoaded value),
    @required TResult messageFailure(_MessageFailure value),
  }) {
    assert(initial != null);
    assert(allMessagesLoaded != null);
    assert(messageFailure != null);
    return allMessagesLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult allMessagesLoaded(_AllMessagesLoaded value),
    TResult messageFailure(_MessageFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (allMessagesLoaded != null) {
      return allMessagesLoaded(this);
    }
    return orElse();
  }
}

abstract class _AllMessagesLoaded implements ChatState {
  const factory _AllMessagesLoaded({@required List<Message> allMessages}) =
      _$_AllMessagesLoaded;

  List<Message> get allMessages;
  @JsonKey(ignore: true)
  _$AllMessagesLoadedCopyWith<_AllMessagesLoaded> get copyWith;
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
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult allMessagesLoaded(List<Message> allMessages),
    @required TResult messageFailure(),
  }) {
    assert(initial != null);
    assert(allMessagesLoaded != null);
    assert(messageFailure != null);
    return messageFailure();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult allMessagesLoaded(List<Message> allMessages),
    TResult messageFailure(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (messageFailure != null) {
      return messageFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult allMessagesLoaded(_AllMessagesLoaded value),
    @required TResult messageFailure(_MessageFailure value),
  }) {
    assert(initial != null);
    assert(allMessagesLoaded != null);
    assert(messageFailure != null);
    return messageFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult allMessagesLoaded(_AllMessagesLoaded value),
    TResult messageFailure(_MessageFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (messageFailure != null) {
      return messageFailure(this);
    }
    return orElse();
  }
}

abstract class _MessageFailure implements ChatState {
  const factory _MessageFailure() = _$_MessageFailure;
}
