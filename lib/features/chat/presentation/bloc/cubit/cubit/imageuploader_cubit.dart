import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'imageuploader_state.dart';
part 'imageuploader_cubit.freezed.dart';

class ImageUploaderCubit extends Cubit<ImageuploaderState> {
  ImageUploaderCubit() : super(ImageuploaderState.idle());

  void setToIdle() {
    print('setToIdle');

    emit(ImageuploaderState.idle());
  }

  void setToLoading() {
    print('setToLoading');
    emit(ImageuploaderState.loading());
  }
}
