import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:posttest7_1915016075_elicaputri/landingPage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    splashScreenStart();
  }

  splashScreenStart() {
    var duration = const Duration(seconds: 2);
    return Timer(duration, () {
      Get.to(() => LandingPage());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(150),
            gradient: const LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Color.fromARGB(255, 20, 187, 157),
                  Color.fromARGB(255, 8, 80, 67),
                ]),
            image: const DecorationImage(
              image: AssetImage(
                "assets/disc.png",
              ),
            ),
          ),
        ),
      ),
      backgroundColor: Colors.black87,
    );
  }
}
