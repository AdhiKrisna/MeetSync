import 'package:flutter/material.dart';
import 'package:meet_sync/constants/constant_color.dart';
import 'package:meet_sync/constants/constant_text_style.dart';
import 'package:meet_sync/features/lecture/widgets/button.dart';
import 'package:meet_sync/features/lecture/widgets/lecturer_schedule_card.dart';
import 'package:meet_sync/routes/route_name.dart';
import 'package:meet_sync/widgets/calender.dart';
import 'package:meet_sync/widgets/top_section.dart';

class LecturerSchedule extends StatefulWidget {
  const LecturerSchedule({super.key});

  @override
  State<LecturerSchedule> createState() => _LecturerScheduleState();
}

class _LecturerScheduleState extends State<LecturerSchedule> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TopSection(radiusCircular: false),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            width: double.infinity,
            decoration: BoxDecoration(
              color: pink,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            child: Column(
              children: [
                Calendar(),
                const SizedBox(height: 10),
                Button(
                  text: "Select",
                  routeButton: RouteName.homeLecturer,
                  width: 130,
                ),
                const SizedBox(height: 15),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Schedule",
                  style: ConstantTextStyle.stylePoppins(
                    color: orange,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 15),
                for (int i = 0; i < 3; i++) ...[
                  ScheduleLecturerCard(),
                  const SizedBox(height: 10),
                ]
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
