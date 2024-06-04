import 'package:flutter/material.dart';
import 'package:hw8/views/image_picker_screen.dart';
import 'package:hw8/views/screen01.dart';
import 'package:hw8/views/screen02.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'imagePickerScreen',
    routes: {
      'screen01': (context) => const Screen01(),
      'screen02': (context) => Screen02(),
      'imagePickerScreen': (context) => ImagePickerScreen(),
    },
  ));
}
