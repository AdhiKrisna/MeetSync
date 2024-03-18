
import 'package:get/get.dart';

class AuthController extends GetxController {
  final RxBool _isObscure = true.obs;
  RxBool get getIsObscure => _isObscure;
  void setIsObscure() {
    _isObscure.value = !_isObscure.value;
  }
}