import 'dart:io';
import 'package:image_picker/image_picker.dart';

Future<File> pickImageFromGallery() async =>
    await _pickImage(ImageSource.gallery);


Future<File> pickImageFromCamera() async =>
    await _pickImage(ImageSource.camera);

Future<File> _pickImage(ImageSource source) async {
  final picker = ImagePicker();
  var selectedFile = await picker.getImage(source: source);

  if(selectedFile == null) {
    return null;
  }

  return File(selectedFile.path);
}
