part of 'video_cubit.dart';

@freezed
abstract class VideoState with _$VideoState {
  const factory VideoState.initial() = _Initial;
  const factory VideoState.chatRoomLoaded(
      {required final String chatRoomUrl}) = _ChatRoomLoaded;
}
