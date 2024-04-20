import 'package:flutter/material.dart';
import 'package:meet_sync/constants/constant_color.dart';
import 'package:meet_sync/constants/constant_text_style.dart';
import 'package:meet_sync/routes/route_name.dart';
import 'package:meet_sync/widgets/button.dart';
import 'package:meet_sync/widgets/pinned_teacher_widget.dart';
import 'package:meet_sync/widgets/search_dosen_widget.dart';
import 'package:meet_sync/widgets/top_section.dart';

class StudentToday extends StatelessWidget {
  StudentToday({super.key});

  @override
  Widget build(BuildContext context) {
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
                    'Pin Lecturer',
                    style: ConstantTextStyle.stylePoppins(
                      color: orange,
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 8),
                  for (i = 0; i < names.length - 1; i++) ...[
                    if (i == 0)
                      PinnedTeacher(
                        name: names[i],
                        jenis: "first",
                      )
                    else
                      PinnedTeacher(
                        name: names[i],
                      ),
                  ],
                  PinnedTeacher(
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
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.black,
                        width: 1,
                      ),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: 9,
                            bottom: 2,
                            left: 20,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 22,
                                    backgroundImage:
                                        AssetImage('assets/images/avatar.png'),
                                  ),
                                  const SizedBox(width: 7),
                                  Text(
                                    'Atlas Riversong',
                                    style: ConstantTextStyle.stylePoppins(
                                      color: btnPurple,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                              IconButton(
                                icon: new Image.asset(
                                  'assets/icons/Pin.png',
                                  width: 20,
                                  height: 20,
                                ),
                                color: Colors.yellow,
                                onPressed: () {},
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Container(
                            height: 1,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 15),
                        Text(
                          'Perwalian 2024',
                          style: ConstantTextStyle.stylePoppins(
                            color: btnPurple,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 15),
                        Button(
                          text: 'Check Meeting',
                          routeButton: RouteName.checkTodayMeeting,
                        ),
                        const SizedBox(height: 16),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
