import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meet_sync/constants/constant_color.dart';
import 'package:meet_sync/features/student/controller/screen_controller.dart';

class StudentLandingScreen extends StatelessWidget {
    StudentLandingScreen({
    super.key,
  });
  final StudentScreenController screenC = Get.find(); //FUNGSINYA BINDING AGAR BISA .find()
  
  @override
  Widget build(BuildContext context) {
  // print('student landing screen status ${screenC.isCheckMeeting.value}');
    return Scaffold(
      body: Scaffold(
        bottomNavigationBar: SingleChildScrollView(
          child: Obx(() => BottomNavigationBar(
                backgroundColor: pink,
                selectedItemColor: purple,
                selectedLabelStyle: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                iconSize: 40,
                currentIndex: screenC.indexBottomNavigationBar.value,
                onTap: (value) => screenC.changeIndex(value),
                items: screenC.items,
              )),
        ),
        body: Obx(() => screenC.pages[screenC.indexBottomNavigationBar.value]),
      ),
    );
  }
}
