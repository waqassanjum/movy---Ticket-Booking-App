import 'package:flutter/material.dart';
import 'dart:math';

class TSeatSelection extends StatelessWidget {
  TSeatSelection({super.key});

  final Color selectedColor = Color(0XFFEA4C89);
  final Color reservedColor = Colors.grey;
  final Color availableColor = Colors.transparent;

  Color _getSeatColor(Random random) {
    final seatStates = [selectedColor, reservedColor, availableColor];
    return seatStates[random.nextInt(seatStates.length)];
  }

  @override
  Widget build(BuildContext context) {
    final random = Random();

    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(25),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 8,
            crossAxisSpacing: 15,
            mainAxisSpacing: 15,
            childAspectRatio: 1.4,
          ),
          itemCount: 72,
          itemBuilder: (context, index) {
            final seatColor = _getSeatColor(random);

            return Container(
              decoration: BoxDecoration(
                color: seatColor,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: seatColor == availableColor
                      ? Colors.grey.shade400
                      : seatColor,
                  width: 1.5,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
