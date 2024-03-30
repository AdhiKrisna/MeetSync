import 'package:get/get.dart';

class RoleController extends GetxController {
  // List of roles
  List<String> roles = [
    'Student',
    'Lecturer',
  ];
  // Selected role
  var selectedRole = RxString('');
  void onInit() {
    super.onInit();
    selectedRole.value = roles.first;
  }
  // Method to update selected role
  void updateSelectedRole(String role) {
    selectedRole.value = role;
  }
}
