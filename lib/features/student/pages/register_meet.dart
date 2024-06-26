import 'package:flutter/material.dart';
import 'package:meet_sync/constants/constant_color.dart';
import 'package:meet_sync/constants/constant_text_style.dart';
import 'package:meet_sync/routes/route_name.dart';
import 'package:meet_sync/features/student/widgets/button.dart';
import 'package:meet_sync/widgets/calender.dart';
import 'package:meet_sync/features/student/widgets/lecturer_card.dart';
import 'package:meet_sync/widgets/search_dosen_widget.dart';
import 'package:meet_sync/widgets/top_section.dart';

class RegisterMeet extends StatefulWidget {
  const RegisterMeet({super.key});

  @override
  State<RegisterMeet> createState() => _RegisterMeetState();
}

class _RegisterMeetState extends State<RegisterMeet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
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
                  routeButton: RouteName.homeStudent,
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
                SearchFieldDosen(),
                const SizedBox(height: 17),
                Text(
                  "Meeting Sync",
                  style: ConstantTextStyle.stylePoppins(
                    color: orange,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 13),
                RegisterLecturerCard(),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
