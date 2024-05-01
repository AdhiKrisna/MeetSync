import 'package:flutter/material.dart';
import 'package:meet_sync/constants/constant_color.dart';
import 'package:meet_sync/constants/constant_text_style.dart';
import 'package:meet_sync/features/lecture/widgets/button.dart';
import 'package:meet_sync/features/lecture/widgets/scheduled_list_student_widget.dart';
import 'package:meet_sync/widgets/top_section.dart';

class LecturerCheckMeeting extends StatelessWidget {
  const LecturerCheckMeeting({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> names = [
      {'name': 'Atlas Riversong', 'time': '10:00 - 10:10'},
      {'name': 'Jasper Moonstone', 'time': '10:10 - 10:20'},
      {'name': 'Sirup Marjan', 'time': '10:20 - 10:30'},
      {'name': 'Luna Starlight', 'time': '10:30 - 10:40'},
      {'name': 'Blaze Silverwood', 'time': '10:40 - 10:50'},
    ];
    int i;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TopSection(),
            const SizedBox(height: 20),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Schedule Senin',
                        style: ConstantTextStyle.stylePoppins(
                          color: orange,
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        '29 April 2024',
                        style: ConstantTextStyle.stylePoppins(
                          color: grey3,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    decoration: BoxDecoration(
                      color: pink,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 25,
                          backgroundImage:
                              AssetImage('assets/images/user_icon.png'),
                        ),
                        const SizedBox(width: 10),
                        Text(
                          'Atlas Riversong',
                          style: ConstantTextStyle.stylePoppins(
                            color: btnPurple,
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Perwalian 2024',
                          style: ConstantTextStyle.stylePoppins(
                            color: btnPurple,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          'Di alam semesta yang abstrak dan tidak terikat oleh batasan, terdapat  keberadaan yang tak terdefinisi secara jelas. Dalam keruwetan kosmos  yang tak terkira, entitas takberwujud melintas tanpa arah yang pasti.',
                          style: ConstantTextStyle.stylePoppins(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        const SizedBox(height: 15),
                        Row(
                          children: [
                            Icon(
                              Icons.calendar_today,
                              color: btnPurple,
                              size: 30,
                            ),
                            const SizedBox(width: 10),
                            Text(
                              'dd/mm/yyyy',
                              style: ConstantTextStyle.stylePoppins(
                                color: btnPurple,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 15),
                        Row(
                          children: [
                            Icon(
                              Icons.access_time,
                              color: btnPurple,
                              size: 30,
                            ),
                            const SizedBox(width: 10),
                            Text(
                              '10 Menit',
                              style: ConstantTextStyle.stylePoppins(
                                color: btnPurple,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 15),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on_rounded,
                              color: btnPurple,
                              size: 30,
                            ),
                            const SizedBox(width: 10),
                            Text(
                              'Ruang Dosen',
                              style: ConstantTextStyle.stylePoppins(
                                color: btnPurple,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 15),
                        for (i = 0; i < names.length - 1; i++) ...[
                          if (i == 0)
                            ScheduledStudentList(
                              time: names[i]['time'] ?? '',
                              name: names[i]['name'] ?? '',
                              jenis: "first",
                            )
                          else
                            ScheduledStudentList(
                              name: names[i]['name'] ?? '',
                              time: names[i]['time'] ?? '',
                            ),
                        ],
                        ScheduledStudentList(
                          time: names[i]['time'] ?? '',
                          name: names[i]['name'] ?? '',
                          jenis: "last",
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 30,  right: 30, bottom: 30),
              child: Button(
                width: 150,
                text: 'Back',
                routeButton: "back",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
