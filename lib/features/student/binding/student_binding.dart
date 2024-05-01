
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:meet_sync/features/student/controller/screen_controller.dart';
import 'package:meet_sync/features/student/controller/time_button_controller.dart';

class StudentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => StudentScreenController());
    Get.lazyPut(() => TimeButtonController());
    print('Student Binding');
  }
}