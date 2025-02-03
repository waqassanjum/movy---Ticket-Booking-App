import 'package:flutter/material.dart';
import 'package:movie_ticket_booking_app/booking_screen/bottom_button/bottom_button.dart';
import 'package:movie_ticket_booking_app/booking_screen/seat_selection.dart';
import 'package:movie_ticket_booking_app/divider/divider.dart';
import 'package:movie_ticket_booking_app/header/header_container.dart';
import 'package:movie_ticket_booking_app/utils/constants/sizes.dart';

class BookingScreen extends StatelessWidget {
  const BookingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF381a22),
      appBar: AppBar(
        backgroundColor: const Color(0xFF381a22),
        automaticallyImplyLeading: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Evil Dead Rise',
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                    SizedBox(height: 5),
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
          Expanded(child: TSeatSelection()),
          const SizedBox(height: TSizes.spaceBtwItems),
          TBottomButton(),
          const SizedBox(height: TSizes.spaceBtwItems),
        ],
      ),
    );
  }
}
