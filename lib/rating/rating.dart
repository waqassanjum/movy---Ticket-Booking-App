import 'package:flutter/material.dart';

class TRatingAndShare extends StatelessWidget {
  const TRatingAndShare({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Rating
        Row(
          children: [
            Icon(Icons.star, color: Colors.amber, size: 10),
            // SizedBox(width: TSizes.spaceBtwItems / 2),
          ],
        ),
      ],
    );
  }
}
