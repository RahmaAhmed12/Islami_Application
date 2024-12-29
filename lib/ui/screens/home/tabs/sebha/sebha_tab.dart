//import 'dart:ui_web';

import 'package:flutter/material.dart';
import 'package:islami_c13_sun/ui/utils/app_styles.dart';
import 'package:islami_c13_sun/ui/utils/asset_manager.dart';

class SebhaTab extends StatefulWidget {
  const SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int counter = 0;
  double rotationAngle = 0.0; // Track the rotation angle
  String displayedText = 'سبحان الله';

  void incrementCounter() {
    setState(() {
      counter++;
      rotationAngle += 0.034;

      // Change text when counter reaches 30
      if (counter == 31) {
        counter = 0;
        if (displayedText == 'سبحان الله') {
          displayedText = 'الحمد لله';
        } else if (displayedText == 'الحمد لله') {
          displayedText = 'الله اكبر';
        } else {
          displayedText = 'سبحان الله';
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage(AssetsManager.sebhaBackground),
        fit: BoxFit.fill,
      )),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Image.asset(AssetsManager.islamiLogo),
            SizedBox(
              height: 10,
            ),
            Text(
              'سَبِّحِ اسْمَ رَبِّكَ الأعلى',
              style: AppStyles.whiteBold32,
            ),
            SizedBox(
              height: 20,
            ),
            sebha(),
          ],
        ),
      ),
    );
  }

  Widget sebha() {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 176),
          child: Image.asset(
            AssetsManager.sebhaMask, // Replace with your image asset
            height: 75,
            width: 60,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 54, left: 10),
          child: AnimatedRotation(
            turns: rotationAngle,
            duration: Duration(milliseconds: 300),
            // Duration of the rotation animation
            child: Image.asset(
              AssetsManager.sebhaBody, // Replace with your image asset
              height: 360,
              width: 340,
            ),
          ),
        ),
        Padding(
            padding: EdgeInsets.only(top: 170),
            child: Center(
              child: GestureDetector(
                onTap: incrementCounter,
                child: Container(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          displayedText,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 32,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 30),
                        Text(
                          '$counter',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 32,
                            color: Colors.white,
                          ),
                        ),
                      ]),
                ),
              ),
            )),
      ],
    );
  }
}
