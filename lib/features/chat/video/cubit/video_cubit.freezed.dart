// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$VideoState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String chatRoomUrl) chatRoomLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String chatRoomUrl)? chatRoomLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String chatRoomUrl)? chatRoomLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ChatRoomLoaded value) chatRoomLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ChatRoomLoaded value)? chatRoomLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ChatRoomLoaded value)? chatRoomLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoStateCopyWith<$Res> {
  factory $VideoStateCopyWith(
          VideoState value, $Res Function(VideoState) then) =
      _$VideoStateCopyWithImpl<$Res, VideoState>;
}

/// @nodoc
class _$VideoStateCopyWithImpl<$Res, $Val extends VideoState>
    implements $VideoStateCopyWith<$Res> {
  _$VideoStateCopyWithImpl(this._value, this._then);

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
    extends _$VideoStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'VideoState.initial()';
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
    required TResult Function(String chatRoomUrl) chatRoomLoaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String chatRoomUrl)? chatRoomLoaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String chatRoomUrl)? chatRoomLoaded,
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
    required TResult Function(_ChatRoomLoaded value) chatRoomLoaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ChatRoomLoaded value)? chatRoomLoaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ChatRoomLoaded value)? chatRoomLoaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements VideoState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$ChatRoomLoadedImplCopyWith<$Res> {
  factory _$$ChatRoomLoadedImplCopyWith(_$ChatRoomLoadedImpl value,
          $Res Function(_$ChatRoomLoadedImpl) then) =
      __$$ChatRoomLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String chatRoomUrl});
}

/// @nodoc
class __$$ChatRoomLoadedImplCopyWithImpl<$Res>
    extends _$VideoStateCopyWithImpl<$Res, _$ChatRoomLoadedImpl>
    implements _$$ChatRoomLoadedImplCopyWith<$Res> {
  __$$ChatRoomLoadedImplCopyWithImpl(
      _$ChatRoomLoadedImpl _value, $Res Function(_$ChatRoomLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatRoomUrl = null,
  }) {
    return _then(_$ChatRoomLoadedImpl(
      chatRoomUrl: null == chatRoomUrl
          ? _value.chatRoomUrl
          : chatRoomUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChatRoomLoadedImpl implements _ChatRoomLoaded {
  const _$ChatRoomLoadedImpl({required this.chatRoomUrl});

  @override
  final String chatRoomUrl;

  @override
  String toString() {
    return 'VideoState.chatRoomLoaded(chatRoomUrl: $chatRoomUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatRoomLoadedImpl &&
            (identical(other.chatRoomUrl, chatRoomUrl) ||
                other.chatRoomUrl == chatRoomUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, chatRoomUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatRoomLoadedImplCopyWith<_$ChatRoomLoadedImpl> get copyWith =>
      __$$ChatRoomLoadedImplCopyWithImpl<_$ChatRoomLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String chatRoomUrl) chatRoomLoaded,
  }) {
    return chatRoomLoaded(chatRoomUrl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String chatRoomUrl)? chatRoomLoaded,
  }) {
    return chatRoomLoaded?.call(chatRoomUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String chatRoomUrl)? chatRoomLoaded,
    required TResult orElse(),
  }) {
    if (chatRoomLoaded != null) {
      return chatRoomLoaded(chatRoomUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ChatRoomLoaded value) chatRoomLoaded,
  }) {
    return chatRoomLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ChatRoomLoaded value)? chatRoomLoaded,
  }) {
    return chatRoomLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ChatRoomLoaded value)? chatRoomLoaded,
    required TResult orElse(),
  }) {
    if (chatRoomLoaded != null) {
      return chatRoomLoaded(this);
    }
    return orElse();
  }
}

abstract class _ChatRoomLoaded implements VideoState {
  const factory _ChatRoomLoaded({required final String chatRoomUrl}) =
      _$ChatRoomLoadedImpl;

  String get chatRoomUrl;
  @JsonKey(ignore: true)
  _$$ChatRoomLoadedImplCopyWith<_$ChatRoomLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
