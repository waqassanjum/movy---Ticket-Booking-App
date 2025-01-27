import 'package:flutter/material.dart';

class TSeatSelection extends StatelessWidget {
  const TSeatSelection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4, // 4 columns
          crossAxisSpacing: 8.0, // Space between columns
          mainAxisSpacing: 8.0, // Space between rows
          childAspectRatio: 1.2, // Adjust ratio for shape
        ),
        itemCount: 36, // Total slots
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              color: index % 2 == 0
                  ? Color(0xFF5A5A5C)
                  : Colors.transparent, // Alternating colors
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.grey.shade400, width: 1.5),
            ),
            child: Center(
              child: Text(
                'Row ${index ~/ 4 + 1} - Seat ${index % 4 + 1}',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
