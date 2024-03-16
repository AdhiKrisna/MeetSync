
import 'package:get/get.dart';
import 'package:meet_sync/features/pages/login.dart';
import 'package:meet_sync/features/pages/register.dart';
import 'route_name.dart';

class RoutePages{
  List<GetPage<dynamic>> routes = [
    GetPage(
      name: RouteName.login,
      page: () => const LoginPage(),
    ),
    GetPage(
      name: RouteName.register,
      page: () => const RegisterPage(),
    ),
  ];

  // List<GetPage<dynamic>> get getRoutes => routes;
}