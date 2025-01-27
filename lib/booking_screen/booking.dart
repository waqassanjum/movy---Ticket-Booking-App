import 'package:flutter/material.dart';
import 'package:movie_ticket_booking_app/booking_screen/seat_selection.dart';
import 'package:movie_ticket_booking_app/divider/divider.dart';
import 'package:movie_ticket_booking_app/header/header_container.dart';

class BookingScreen extends StatelessWidget {
  const BookingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF381a22),
      appBar: AppBar(
        backgroundColor: const Color(0xFF381a22),
        automaticallyImplyLeading: true,
        leading: Icon(Icons.arrow_back, color: Colors.white),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            child: Row(
              children: [
                const SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    const Text(
                      'Evil Dead Rise',
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Horror/Fantasy ‧ 1h 36m',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 12),
                    Text(
                      '14 Shows',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          const SizedBox(height: 16),
          THeaderContainer(),
          TDivider(),
          TSeatSelection(),

          const SizedBox(width: 10),

          // Proceed Button
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                backgroundColor: const Color(0xFF6E375D),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              onPressed: () {
                // Navigate to payment screen
              },
              child: const Text(
                'Proceed to Payment',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
