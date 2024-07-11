import 'package:flutter/material.dart';
import 'package:meet_sync/constants/constant_color.dart';
import 'package:meet_sync/constants/constant_text_style.dart';
import 'package:meet_sync/features/lecture/controller/welcome_controller.dart';
import 'package:meet_sync/features/student/widgets/lecturer_card.dart';
import 'package:meet_sync/features/student/widgets/pinned_lecturer_widget.dart';
import 'package:meet_sync/widgets/search_dosen_widget.dart';
import 'package:meet_sync/widgets/top_section.dart';

class StudentSchedule extends StatelessWidget {
  StudentSchedule({super.key});
  final WelcomeController welcomeController = WelcomeController();

  Future<void> takeData() async {
    await welcomeController.welcome();
  }

  @override
  Widget build(BuildContext context) {
    takeData();
    List<String> names = [
      'Atlas Riversong',
      'Jasper Moonstone',
      'Blaze Silverwood',
    ];
    int i = 0;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TopSection(),
            const SizedBox(height: 20),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SearchFieldDosen(),
                  const SizedBox(height: 19),
                  Text(
                    'Pinned Lecturer',
                    style: ConstantTextStyle.stylePoppins(
                      color: orange,
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 8),
                  for (i = 0; i < names.length - 1; i++) ...[
                    if (i == 0)
                      PinnedLecturer(
                        name: names[i],
                        jenis: "first",
                      )
                    else
                      PinnedLecturer(
                        name: names[i],
                      ),
                  ],
                  PinnedLecturer(
                    name: names[i],
                    jenis: "last",
                  ),
                  const SizedBox(height: 19),
                  Text(
                    'Schedule',
                    style: ConstantTextStyle.stylePoppins(
                      color: orange,
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 8),
                  TodayLecturerCard(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
