

import 'package:get/get.dart';
import 'package:meet_sync/controller/auth_controller.dart';

class AuthBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AuthController());
    print('AuthBindings');
  }
}