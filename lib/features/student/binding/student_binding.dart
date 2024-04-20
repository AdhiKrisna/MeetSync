
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:meet_sync/controller/auth_controller.dart';
import 'package:meet_sync/features/student/controller/screen_controller.dart';

class StudentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ScreenController());
    Get.lazyPut(() => AuthController());  
    print('HomeBindingss');
  }
}