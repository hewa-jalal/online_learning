import 'package:bloc/bloc.dart';

class AttachmentCubit extends Cubit<bool> {
  AttachmentCubit() : super(false);

  void changeStatus(bool isOpen) => emit(isOpen);
}
