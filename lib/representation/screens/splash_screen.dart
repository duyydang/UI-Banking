import 'package:flutter/material.dart';
import 'package:money_managing/helper/asset_helper.dart';
import 'package:money_managing/helper/image_helper.dart';
import 'package:money_managing/representation/screens/home_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Theme.of(context).primaryColor
        ),
        Positioned(
            top: 100,
            left: 33,
            right: 32,
            child: Column(
              children: [
                ImageHelper.loadFromAsset(AssetHelper.imgSplashScreen),
                const SizedBox(
                  height: 100,
                ),
                RichText(
                  text: const TextSpan(
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                      children: [
                        TextSpan(text: 'Money '),
                        TextSpan(
                            text: 'Moora',
                            style: TextStyle(color: Colors.pinkAccent))
                      ]),
                ),
                const SizedBox(
                  height: 11,
                ),
                const Text(
                  'A brand new experience\nof managing your business',
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 80,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomeScreen(),
                        ));
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 18, horizontal: 71),
                    decoration: BoxDecoration(
                        color: const Color(0xFFFF70A3),
                        borderRadius: BorderRadius.circular(10)),
                    child: const Text(
                      'Get Started Now!',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                )
              ],
            ))
      ],
    );
  }
}
