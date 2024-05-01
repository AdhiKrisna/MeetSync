
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:meet_sync/features/lecture/controller/screen_controller.dart';

class LecturerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LecturerScreenController());
    print('Lecture Binding');
  }
}