import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meet_sync/features/student/pages/student_schedule.dart';
import 'package:meet_sync/features/student/pages/profile.dart';
import 'package:meet_sync/features/student/pages/register_meet.dart';

class StudentScreenController extends GetxController {
  final RxInt _indexBottomNavigationBar = 0.obs;
  // final RxBool _isCheckMeeting = false.obs;

  RxInt get indexBottomNavigationBar => _indexBottomNavigationBar;
  void changeIndex(int val) {
    _indexBottomNavigationBar.value = val;
  }
  // RxBool get isCheckMeeting => _isCheckMeeting;
  // void setIsMeeting(){
  //   _isCheckMeeting.value = !_isCheckMeeting.value;
  // }

  final List<BottomNavigationBarItem> items = [
    BottomNavigationBarItem(
      icon: Icon(Icons.access_time),
      label: 'Schedule',
    ),
    BottomNavigationBarItem(
      icon: Image.asset('assets/icons/Schedule.png'),
      label: 'Search Meeting',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.person),
      label: 'Profile',
    ),
  ];
  List<Widget>  pages = [];

  @override
  void onInit() {
    super.onInit();
    // print('student landing screen status ${isCheckMeeting.value}');
    pages = [
      // isCheckMeeting.isFalse ? StudentToday() : CheckTodayMeeting(),
      StudentSchedule(),
      RegisterMeet(),
      StudentProfile(),
    ];
  }
}
