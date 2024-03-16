
import 'package:flutter/material.dart';

class LabelText extends StatelessWidget {
  final String label;
  const LabelText({
    super.key,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 16,
            color: Color.fromARGB(255, 0, 0, 0),
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 3),
      ],
    );
  }
}