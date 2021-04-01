// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'video_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$VideoStateTearOff {
  const _$VideoStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _ChatRoomLoaded chatRoomLoaded({@required String chatRoomUrl}) {
    return _ChatRoomLoaded(
      chatRoomUrl: chatRoomUrl,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $VideoState = _$VideoStateTearOff();

/// @nodoc
mixin _$VideoState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult chatRoomLoaded(String chatRoomUrl),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult chatRoomLoaded(String chatRoomUrl),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult chatRoomLoaded(_ChatRoomLoaded value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult chatRoomLoaded(_ChatRoomLoaded value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $VideoStateCopyWith<$Res> {
  factory $VideoStateCopyWith(
          VideoState value, $Res Function(VideoState) then) =
      _$VideoStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$VideoStateCopyWithImpl<$Res> implements $VideoStateCopyWith<$Res> {
  _$VideoStateCopyWithImpl(this._value, this._then);

  final VideoState _value;
  // ignore: unused_field
  final $Res Function(VideoState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$VideoStateCopyWithImpl<$Res>
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
    return 'VideoState.initial()';
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
    @required TResult chatRoomLoaded(String chatRoomUrl),
  }) {
    assert(initial != null);
    assert(chatRoomLoaded != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult chatRoomLoaded(String chatRoomUrl),
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
    @required TResult chatRoomLoaded(_ChatRoomLoaded value),
  }) {
    assert(initial != null);
    assert(chatRoomLoaded != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult chatRoomLoaded(_ChatRoomLoaded value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements VideoState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$ChatRoomLoadedCopyWith<$Res> {
  factory _$ChatRoomLoadedCopyWith(
          _ChatRoomLoaded value, $Res Function(_ChatRoomLoaded) then) =
      __$ChatRoomLoadedCopyWithImpl<$Res>;
  $Res call({String chatRoomUrl});
}

/// @nodoc
class __$ChatRoomLoadedCopyWithImpl<$Res> extends _$VideoStateCopyWithImpl<$Res>
    implements _$ChatRoomLoadedCopyWith<$Res> {
  __$ChatRoomLoadedCopyWithImpl(
      _ChatRoomLoaded _value, $Res Function(_ChatRoomLoaded) _then)
      : super(_value, (v) => _then(v as _ChatRoomLoaded));

  @override
  _ChatRoomLoaded get _value => super._value as _ChatRoomLoaded;

  @override
  $Res call({
    Object chatRoomUrl = freezed,
  }) {
    return _then(_ChatRoomLoaded(
      chatRoomUrl:
          chatRoomUrl == freezed ? _value.chatRoomUrl : chatRoomUrl as String,
    ));
  }
}

/// @nodoc
class _$_ChatRoomLoaded implements _ChatRoomLoaded {
  const _$_ChatRoomLoaded({@required this.chatRoomUrl})
      : assert(chatRoomUrl != null);

  @override
  final String chatRoomUrl;

  @override
  String toString() {
    return 'VideoState.chatRoomLoaded(chatRoomUrl: $chatRoomUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChatRoomLoaded &&
            (identical(other.chatRoomUrl, chatRoomUrl) ||
                const DeepCollectionEquality()
                    .equals(other.chatRoomUrl, chatRoomUrl)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(chatRoomUrl);

  @JsonKey(ignore: true)
  @override
  _$ChatRoomLoadedCopyWith<_ChatRoomLoaded> get copyWith =>
      __$ChatRoomLoadedCopyWithImpl<_ChatRoomLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult chatRoomLoaded(String chatRoomUrl),
  }) {
    assert(initial != null);
    assert(chatRoomLoaded != null);
    return chatRoomLoaded(chatRoomUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult chatRoomLoaded(String chatRoomUrl),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (chatRoomLoaded != null) {
      return chatRoomLoaded(chatRoomUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult chatRoomLoaded(_ChatRoomLoaded value),
  }) {
    assert(initial != null);
    assert(chatRoomLoaded != null);
    return chatRoomLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult chatRoomLoaded(_ChatRoomLoaded value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (chatRoomLoaded != null) {
      return chatRoomLoaded(this);
    }
    return orElse();
  }
}

abstract class _ChatRoomLoaded implements VideoState {
  const factory _ChatRoomLoaded({@required String chatRoomUrl}) =
      _$_ChatRoomLoaded;

  String get chatRoomUrl;
  @JsonKey(ignore: true)
  _$ChatRoomLoadedCopyWith<_ChatRoomLoaded> get copyWith;
}
