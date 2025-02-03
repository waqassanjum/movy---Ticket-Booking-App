import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_ticket_booking_app/booking_screen/booking.dart';
import 'package:movie_ticket_booking_app/style/shadow_style.dart';

class TProductCardVertical extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;

  const TProductCardVertical({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.to(() => BookingScreen()),
      child: Container(
        margin: const EdgeInsets.only(bottom: 35),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          boxShadow: [TShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(25),
          color: const Color(0XFF2D2D2D),
        ),
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start, // Align content to the left
          children: [
            Stack(
              children: [
                Image.asset(imageUrl, fit: BoxFit.cover),
              ],
            ),
            const SizedBox(height: 10),
            Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 11,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              textAlign:
                  TextAlign.start, // Align subtitle text to the start (left)
              subtitle,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 8,
              ),
            ),
            const SizedBox(height: 5),
            Row(
              mainAxisAlignment:
                  MainAxisAlignment.start, // Align the stars to the left
              children: List.generate(
                4,
                (index) =>
                    const Icon(Icons.star, color: Colors.yellow, size: 12),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
