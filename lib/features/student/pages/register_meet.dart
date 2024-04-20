import 'package:flutter/material.dart';
import 'package:meet_sync/widgets/top_section.dart';

class RegisterMeet extends StatelessWidget {
  const RegisterMeet ({super.key});

  @override
  Widget build(BuildContext context) {
     return const Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          TopSection(),
          const SizedBox(height: 20),
          
        ],
      )
    );
  }
}