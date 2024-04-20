
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meet_sync/constants/constant_color.dart';
import 'package:meet_sync/features/student/controller/screen_controller.dart';

class LandingScreen extends StatelessWidget {
  LandingScreen({super.key});
  final ScreenController homeC = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(  
      body: Scaffold(
        bottomNavigationBar:  SingleChildScrollView(
          child: Obx(() => BottomNavigationBar(
            backgroundColor: pink,
            selectedItemColor: purple,
            selectedLabelStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            iconSize: 40,
            currentIndex: homeC.indexBottomNavigationBar.value,
            onTap: (value) => homeC.changeIndex(value),
            items: homeC.items,
          )),
        ),
        body: Obx(() => homeC.pages[homeC.indexBottomNavigationBar.value]),
      ),
    );
  }
}