import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_ticket_booking_app/home/home_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    // Navigate to the HomeScreen after a short delay
    Timer(Duration(seconds: 3), () {
      Get.off(() => HomeScreen(), transition: Transition.fadeIn);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/on_boarding_images/BG.png',
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Text(
              "Movy",
              style: TextStyle(
                fontFamily: 'Oleo',
                fontSize: 87,
                color: Color(0XFFEA4C89),
                fontWeight: FontWeight.bold,
                shadows: [
                  Shadow(
                    blurRadius: 10,
                    color: Colors.black54,
                    offset: Offset(3, 3),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
