import 'package:flutter/material.dart';
import 'package:meet_sync/widgets/top_section.dart';

class StudentProfile extends StatelessWidget {
  const StudentProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          TopSection(),
        ],
      )
    );
  }
}