import 'package:flutter/material.dart';

class TSeatSelection extends StatefulWidget {
  const TSeatSelection({super.key});

  @override
  _TSeatSelectionState createState() => _TSeatSelectionState();
}

class _TSeatSelectionState extends State<TSeatSelection> {
  final Color selectedColor = const Color(0XFFEA4C89);
  final Color reservedColor = Colors.grey;
  final Color availableColor = Colors.transparent;

  late List<Color> seatColors;

  @override
  void initState() {
    super.initState();
    seatColors = List.generate(72, (index) => availableColor);
  }

  void _toggleSeatSelection(int index) {
    setState(() {
      if (seatColors[index] == availableColor) {
        seatColors[index] = selectedColor;
      } else if (seatColors[index] == selectedColor) {
        seatColors[index] = availableColor;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
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
            if (index == 0 || index == 7 || index == 64 || index == 71) {
              return const SizedBox.shrink();
            }

            return GestureDetector(
              onTap: () => _toggleSeatSelection(index),
              child: Container(
                decoration: BoxDecoration(
                  color: seatColors[index],
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: seatColors[index] == availableColor
                        ? Colors.grey.shade400
                        : seatColors[index],
                    width: 1.5,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
