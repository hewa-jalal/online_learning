import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:online_learning/features/chat/video/video_repository.dart';

part 'video_state.dart';
part 'video_cubit.freezed.dart';

class VideoCubit extends Cubit<VideoState> {
  VideoCubit(this._videoRepositoy) : super(VideoState.initial());
  final VideoRepositoy _videoRepositoy;

  void addVideoRoomUrl({
    @required String roomText,
  }) =>
      _videoRepositoy.addVideoUrl(roomText: roomText);
}
