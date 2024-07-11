

import 'package:get/get.dart';
import 'package:meet_sync/controller/text_field_controller.dart';

class AuthBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TextFieldController());
    print('AuthBindings');
  }
}