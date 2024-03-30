import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meet_sync/features/student/pages/home.dart';
import 'package:meet_sync/features/student/pages/profile.dart';
import 'package:meet_sync/features/student/pages/register_meet.dart';

class ScreenController extends GetxController {
  final RxInt _indexBottomNavigationBar = 0.obs;
  RxInt get indexBottomNavigationBar => _indexBottomNavigationBar;

  void changeIndex(int val) {
    _indexBottomNavigationBar.value = val;
  }

  final List<BottomNavigationBarItem> items = [
    BottomNavigationBarItem(
      icon: Icon(Icons.access_time),
      label: 'Today',
    ),
    BottomNavigationBarItem(
      icon: Image.asset('assets/images/icons/Schedule.png'),
      label: 'Meet Sync',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.person),
      label: 'Profile',
    ),
  ];

  final List<Widget> pages = [
    StudentHome(),
    RegisterMeet(),
    StudentProfile(),
  ];
}