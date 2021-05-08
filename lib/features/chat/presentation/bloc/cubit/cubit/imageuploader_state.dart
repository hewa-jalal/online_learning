part of 'imageuploader_cubit.dart';

@freezed
abstract class ImageuploaderState with _$ImageuploaderState {
  const factory ImageuploaderState.idle() = _Idle;
  const factory ImageuploaderState.loading() = _Loading;
}
