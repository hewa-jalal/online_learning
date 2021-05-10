import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../video_repository.dart';

part 'video_state.dart';
part 'video_cubit.freezed.dart';

class VideoCubit extends Cubit<VideoState> {
  VideoCubit(this._videoRepositoy) : super(VideoState.initial());
  final VideoRepositoy _videoRepositoy;

  void addVideoRoomUrl({
    @required String roomText,
    @required String courseTitle,
    @required String dept,
    @required int stage,
  }) =>
      _videoRepositoy.addVideoUrl(
        roomText: roomText,
        courseTitle: courseTitle,
        dept: dept,
        stage: stage,
      );

  void getVideoUrl() async {
    final videoUrl = await _videoRepositoy.getVideoUrl(roomText: '2');
    if (videoUrl.isNotEmpty) {
      emit(VideoState.chatRoomLoaded(chatRoomUrl: videoUrl));
    }
  }
}
