import 'package:flutter/material.dart';
import 'package:movie_ticket_booking_app/utils/constants/sizes.dart';

class TBottomContainer extends StatelessWidget {
  const TBottomContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Row(
        children: [
          Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.grey),
            ),
          ),
          Text(
            'Available',
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(width: TSizes.spaceBtwItems),
          Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.grey),
            ),
          ),
          Text(
            'Reserved',
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(width: TSizes.spaceBtwItems),
          Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              color: Color(0xffEA4C89),
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.grey),
            ),
          ),
          Text(
            'Selected',
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
