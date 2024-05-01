import 'package:flutter/material.dart';
import 'package:meet_sync/widgets/top_section.dart';

class LecturerProfile extends StatelessWidget {
  const LecturerProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          TopSection(radiusCircular: false,),
        ],
      )
    );
  }
}