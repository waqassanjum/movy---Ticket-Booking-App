import 'package:flutter/material.dart';
import 'package:movie_ticket_booking_app/container/circular_container.dart';
import 'package:movie_ticket_booking_app/curved_widget/curved.dart';

class TPrimaryHeaderContainer extends StatelessWidget {
  const TPrimaryHeaderContainer({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TCurvedEdgesWidgets(
      child: Container(
        color: Color.fromARGB(255, 83, 47, 61),
        child: Stack(
          children: [
            Positioned(
              top: -150,
              right: -250,
              child: TCircularContainer(
                  backgroundColor: Color.fromARGB(255, 83, 47, 61)),
            ),
            Positioned(
              top: 100,
              right: -300,
              child: TCircularContainer(backgroundColor: Color(0XFFEA4C89)),
            ),
            child,
          ],
        ),
      ),
    );
  }
}
