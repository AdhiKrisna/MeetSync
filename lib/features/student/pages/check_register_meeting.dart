import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meet_sync/constants/constant_color.dart';
import 'package:meet_sync/constants/constant_text_style.dart';
import 'package:meet_sync/features/student/controller/time_button_controller.dart';
import 'package:meet_sync/routes/route_name.dart';
import 'package:meet_sync/features/student/widgets/button.dart';
import 'package:meet_sync/widgets/top_section.dart';

class CheckRegisterMeeting extends StatelessWidget {
  const CheckRegisterMeeting({super.key});

  @override
  Widget build(BuildContext context) {
    final TimeButtonController buttonController = Get.find();

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TopSection(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 10),
              child: Column(
                children: [
                  Text(
                    'Register Meeting',
                    style: ConstantTextStyle.stylePoppins(
                      color: orange,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
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
                      crossAxisAlignment: CrossAxisAlignment.center,
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
                                    backgroundImage: AssetImage(
                                        'assets/images/user_icon.png'),
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
                        const SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
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
                              const SizedBox(height: 15),
                              Text(
                                'Di alam semesta yang abstrak dan tidak terikat oleh batasan, terdapat  keberadaan yang tak terdefinisi secara jelas. Dalam keruwetan kosmos  yang tak terkira, entitas takberwujud melintas tanpa arah yang pasti.',
                                style: ConstantTextStyle.stylePoppins(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              const SizedBox(height: 20),
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
                              Wrap(
                                alignment: WrapAlignment.spaceBetween,
                                spacing: 20,
                                runSpacing: 12,
                                children: List.generate(
                                  buttonController.timeList.length,
                                  (index) => TimeButton(
                                    text: buttonController.timeList[index],
                                    index: index,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 15),
                            ],
                          ),
                        ),
                        const SizedBox(height: 15),
                        Obx(() => SelectTimeButton(
                            routeButton: RouteName.homeStudent,
                            selectedIndex:
                                buttonController.selectedIndex.value)),
                        const SizedBox(height: 15),
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
