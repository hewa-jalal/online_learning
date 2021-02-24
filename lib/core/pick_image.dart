import 'dart:io';

import 'package:image_picker/image_picker.dart';

class PickImage {
  File _image;
  final picker = ImagePicker();

  File get image => _image;

  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.camera);
    if (pickedFile != null) {
      _image = File(pickedFile.path);
    }
  }
}
