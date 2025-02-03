import 'package:flutter/material.dart';
import 'package:movie_ticket_booking_app/utils/constants/sizes.dart';

class THeaderContainer extends StatelessWidget {
  const THeaderContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 60,
            width: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Color(0XFFEA4C89)),
                color: Color(0XFF5A5A5C)),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start, // Aligns text to the start
                mainAxisSize:
                    MainAxisSize.min, // Adjusts the size to the content
                children: [
                  Text(
                    '10:30 PM',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'Cinema: 2D',
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Stack(children: [
                    Icon(
                      Icons.living,
                      size: 12,
                      color: Colors.white,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: Text(
                        '25 seats available',
                        style: TextStyle(color: Colors.white, fontSize: 7),
                      ),
                    )
                  ]),
                ],
              ),
            ),
          ),
          SizedBox(
            width: TSizes.spaceBtwItems,
          ),
          Container(
            height: 60,
            width: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0XFF5A5A5C)),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    '2:50 PM',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'Cinema: 2D',
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Stack(children: [
                    Icon(
                      Icons.living,
                      size: 12,
                      color: Colors.white,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: Text(
                        '15 seats available',
                        style: TextStyle(color: Colors.white, fontSize: 7),
                      ),
                    )
                  ]),
                ],
              ),
            ),
          ),
          SizedBox(
            width: TSizes.spaceBtwItems,
          ),
          Container(
            height: 60,
            width: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0XFF5A5A5C)),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start, // Aligns text to the start
                mainAxisSize:
                    MainAxisSize.min, // Adjusts the size to the content
                children: [
                  Text(
                    '6:25 PM',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'Cinema: 2D',
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Stack(children: [
                    Icon(
                      Icons.living,
                      size: 12,
                      color: Colors.white,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: Text(
                        '12 seats available',
                        style: TextStyle(color: Colors.white, fontSize: 7),
                      ),
                    )
                  ]),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
