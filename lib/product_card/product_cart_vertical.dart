import 'package:flutter/material.dart';
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
      onTap: () {},
      child: Container(
        margin: EdgeInsets.only(bottom: 35),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          boxShadow: [TShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(25),
          color: const Color(0XFF2D2D2D),
        ),
        child: Column(
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
              textAlign: TextAlign.start,
              subtitle,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 8,
              ),
            ),
            const SizedBox(height: 5),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  5,
                  (index) =>
                      const Icon(Icons.star, color: Colors.yellow, size: 12),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
