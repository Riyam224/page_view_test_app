import 'package:flutter/material.dart';
import 'package:hw8/views/screen01.dart';
import 'package:hw8/views/screen02.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'screen01',
    routes: {
      'screen01': (context) => const Screen01(),
      'screen02': (context) => const Screen02(),
    },
  ));
}
