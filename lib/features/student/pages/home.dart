import 'package:flutter/material.dart';
import 'package:meet_sync/widgets/top_section.dart';

class StudentHome extends StatelessWidget {
  const StudentHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
            TopSection(),
        ],
      ),
    );
  }
}
