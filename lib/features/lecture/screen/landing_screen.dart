import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:meet_sync/constants/constant_color.dart';
import 'package:meet_sync/features/lecture/controller/screen_controller.dart';

class LecturerLandingScreen extends StatelessWidget {
    LecturerLandingScreen({
    super.key,
  });
  final LecturerScreenController screenC = Get.find(); //FUNGSINYA BINDING AGAR BISA .find()
  
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
