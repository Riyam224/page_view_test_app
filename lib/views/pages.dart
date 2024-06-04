import 'package:flutter/material.dart';

class PageCard {
  Widget({
    required String title,
    required String subtitle,
    required String image,
    required Color color,
  }) =>
      Container(
          width: double.infinity,
          height: double.infinity,
          color: color,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // todo move to image picker screen
              Text(title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  )),

              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(subtitle,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    )),
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset(image),
            ],
          ));
}
