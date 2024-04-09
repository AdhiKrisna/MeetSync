import 'package:get/get.dart';
import 'package:meet_sync/binding/auth_binding.dart';
import 'package:meet_sync/features/pages/login.dart';
import 'package:meet_sync/features/pages/register.dart';
import 'package:meet_sync/features/student/binding/student_binding.dart';
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
      page: () => LandingScreen(),
      binding: StudentBinding(),
    ),
  ];

  // List<GetPage<dynamic>> get getRoutes => routes;
}
