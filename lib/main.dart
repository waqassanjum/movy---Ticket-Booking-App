import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_ticket_booking_app/splash_screen/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Movie Ticket Booking App',
      theme: ThemeData(
        primaryColor: Color(0xffEA4C89),
        scaffoldBackgroundColor: Color.fromARGB(255, 238, 126, 169),
        fontFamily: 'Poppins',
      ),
      home: SplashScreen(),
    );
  }
}
