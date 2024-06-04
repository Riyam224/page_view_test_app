import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerScreen extends StatefulWidget {
  ImagePickerScreen({super.key});

  @override
  State<ImagePickerScreen> createState() => _ImagePickerScreenState();
}

class _ImagePickerScreenState extends State<ImagePickerScreen> {
// todo the image itself
  final ImagePicker _imagePicker = ImagePicker();
  // todo the image source
  XFile? pickedImage;

// todo choose image from gallery
  Future<void> _pickImageFromGallery() async {
    final image = await _imagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      pickedImage = image != null ? XFile(image.path) : null;
    });
  }

// todo choose image from camera
  Future<void> _pickImageFromCamera() async {
    final image = await _imagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      pickedImage = image != null ? XFile(image.path) : null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // todo the image choosed wheather from camera or gallery
            if (pickedImage != null)
              Image.file(
                File(pickedImage!.path),
                height: 200,
              ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // todo
                ElevatedButton(
                  onPressed: () {
                    // todo func
                    _pickImageFromGallery();
                  },
                  child: const Icon(
                    Icons.photo_album,
                  ),
                ),
                const SizedBox(width: 20),
                // todo
                ElevatedButton(
                  onPressed: () {
                    // todo func
                    _pickImageFromCamera();
                  },
                  child: const Icon(
                    Icons.photo_camera,
                  ),
                ),
                const SizedBox(width: 20),
              ],
            )
          ],
        ),
      ),
    );
  }
}
