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
            // todo first page
            Container(
                color: const Color(0xffffeeda),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/logo.png'),
                    const SizedBox(
                      height: 12,
                    ),
                    const Text(
                      'Enjoy fresh food with us ',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xffed337f)),
                    )
                  ],
                )),
            //  todo second page
            Container(
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/onboarding_2.png'),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Track your Comfort Food here',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const Text(
                    'Here You Can find a chef or dish\n for every taste and color. Enjoy!',
                    style: TextStyle(
                        color: Color(
                      0xffb1b1b1,
                    )),
                  ),
                ],
              ),
            ),
            //  todo third page
            Container(
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(child: Image.asset('assets/images/onboarding_3.png')),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: const Text(
                      'Foodie is Where Your\n Comfort Food Resides',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const Text(
                    'Enjoy a fast and smooth food delivery\n at your doorstep',
                    style: TextStyle(
                        color: Color(
                      0xffb1b1b1,
                    )),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      // todo bottom sheet
      bottomSheet: Container(
          height: 60,
          color: const Color(0xffffeeda),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'screen02');
                },
                child: const Text(
                  'skip',
                  style: TextStyle(
                    fontSize: 25,
                    color: Color(0xffec2578),
                  ),
                ),
              ),
              Center(
                  child: SmoothPageIndicator(
                controller: pageController,
                count: 3,
                effect: const ScrollingDotsEffect(
                  activeDotColor: Color(0xffec2578),
                ),
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
                child: const Text(
                  'next',
                  style: TextStyle(
                    fontSize: 25,
                    color: Color(0xffec2578),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
