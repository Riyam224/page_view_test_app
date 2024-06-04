import 'package:flutter/material.dart';
import 'package:hw8/views/pages.dart';

class ScreenPageWidgetFromClassInfo extends StatelessWidget {
  ScreenPageWidgetFromClassInfo({super.key});
  // todo to just called the parameters of the class PageCard
  final page = PageCard();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: page.Widget(
        title: 'sandwitch zinger',
        subtitle:
            ' Best burger recipe ever! Will make again for sure! The burgers turned out juicy and delicious, even though I made them in a skillet. The sauces ... ',
        image: 'assets/images/img2.png',
        color: Colors.red,
      ),
    );
  }
}
