import 'package:get/get.dart';
import 'package:meet_sync/binding/auth_binding.dart';
import 'package:meet_sync/features/lecture/binding/lecturer_binding.dart';
import 'package:meet_sync/features/lecture/pages/edit_profile.dart';
import 'package:meet_sync/features/lecture/pages/lecturer_check_meeting.dart';
import 'package:meet_sync/features/lecture/screen/landing_screen.dart';
import 'package:meet_sync/features/pages/login.dart';
import 'package:meet_sync/features/pages/register.dart';
import 'package:meet_sync/features/student/binding/student_binding.dart';
import 'package:meet_sync/features/student/pages/check_register_meeting.dart';
import 'package:meet_sync/features/student/pages/edit_profile.dart';
import 'package:meet_sync/features/student/pages/student_check_meeting.dart';
import 'package:meet_sync/features/student/screen/landing_screen.dart';
import 'route_name.dart';

class RoutePages {
  List<GetPage<dynamic>> routes = [
    GetPage(
      name: RouteName.login,
      page: () => const LoginPage(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: RouteName.register,
      page: () => const RegisterPage(),
      binding: AuthBinding(),
    ),

    GetPage(
      name: RouteName.homeStudent,
      page: () => StudentLandingScreen(),
      binding: StudentBinding(),
    ),
    GetPage(
      name: RouteName.studentCheckMeeting,
      page: () => StudentCheckMeeting(),
      binding: StudentBinding(),
    ),
    GetPage(
      name: RouteName.checkRegisterMeeting,
      page: () => CheckRegisterMeeting(),
      binding: StudentBinding(),
    ),
    GetPage(
      name: RouteName.studentEditProfile,
      page: () => StudentEditProfile(),
      binding: StudentBinding(),
    ),

    //lecture
    GetPage(
      name: RouteName.homeLecturer,
      page: () => LecturerLandingScreen(),
      binding: LecturerBinding(),
    ),
    GetPage(
      name: RouteName.lecturerCheckMeeting,
      page: () => LecturerCheckMeeting(),
      binding: LecturerBinding(),
    ),
    GetPage(
      name: RouteName.lecturerEditProfile,
      page: () => LecturerEditProfile(),
      binding: LecturerBinding(),
    )
  ];

  // List<GetPage<dynamic>> get getRoutes => routes;
}
