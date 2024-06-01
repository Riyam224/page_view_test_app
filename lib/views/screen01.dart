import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Screen01 extends StatefulWidget {
  const Screen01({super.key});

  @override
  State<Screen01> createState() => _Screen01State();
}

class _Screen01State extends State<Screen01> {
  final pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(bottom: 60),
        child: PageView(
          controller: pageController,
          children: [
            Container(
              color: const Color.fromARGB(255, 211, 196, 173),
            ),
            Container(
              color: Colors.red,
            ),
            Container(
              color: Colors.green,
            ),
          ],
        ),
      ),
      bottomSheet: Container(
          height: 60,
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'screen02');
                },
                child: const Text('skip'),
              ),
              Center(
                  child: SmoothPageIndicator(
                controller: pageController,
                count: 3,
                effect: const WormEffect(),
                onDotClicked: (index) {
                  pageController.animateToPage(
                    index,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                  );
                },
              )),
              ElevatedButton(
                onPressed: () {
                  pageController.nextPage(
                      duration: const Duration(microseconds: 300),
                      curve: Curves.easeIn);
                },
                child: const Text('next'),
              ),
            ],
          )),
    );
  }
}
