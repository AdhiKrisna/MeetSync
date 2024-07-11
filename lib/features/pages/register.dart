import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meet_sync/constants/constant_color.dart';
import 'package:meet_sync/constants/constant_text_style.dart';
import 'package:meet_sync/controller/role_controller.dart';
import 'package:meet_sync/routes/route_name.dart';
import 'package:meet_sync/widgets/button_group.dart';
import 'package:meet_sync/widgets/label_widget.dart';
import 'package:meet_sync/widgets/text_form_field.dart';
import 'package:meet_sync/controller/text_field_controller.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});
  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(top: 34, left: 24, right: 24),
            child: Column(
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Register Meet Sync',
                        style: ConstantTextStyle.stylePoppins(
                          fontSize: 24,
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Container(
                          height: 1,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: Container(
                    margin: EdgeInsets.only(top: 30),
                    decoration: BoxDecoration(
                      color: greyBlue,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 30),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset('assets/images/avatar.png',
                                    height: 90),
                                SizedBox(height: 8),
                                Text(
                                  'Create a new Account',
                                  style: ConstantTextStyle.stylePoppins(
                                    fontSize: 20,
                                    color: Color.fromARGB(255, 0, 0, 0),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ]),
                        ),
                        Column(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 24, horizontal: 10),
                              child: Obx(
                                () => Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    LabelText(label: "Name"),
                                    TextFormFieldWidget(
                                      hintText: "Enter Your Name",
                                      isDefault: false,
                                      paddingVertical: 10,
                                      paddingHorizontal: 20,
                                      color: 'white',
                                    ),
                                    const SizedBox(height: 5),
                                    LabelText(label: "Email"),
                                    TextFormFieldWidget(
                                      hintText: "Enter Your Email",
                                      isDefault: false,
                                      paddingVertical: 10,
                                      paddingHorizontal: 20,
                                      color: 'white',
                                      icon: 'email',
                                    ),
                                    const SizedBox(height: 5),
                                    LabelText(label: "Password"),
                                    TextFormFieldWidget(
                                      hintText: "Enter Your Password",
                                      isDefault: false,
                                      paddingVertical: 10,
                                      paddingHorizontal: 20,
                                      isPassword: true,
                                      color: 'white',
                                      icon: 'password',
                                      passwordController: TextFieldController(),
                                    ),
                                    const SizedBox(height: 5),
                                    LabelText(label: "Confirm Password"),
                                    TextFormFieldWidget(
                                      hintText: "Enter Your Confirm Password",
                                      isDefault: false,
                                      paddingVertical: 10,
                                      paddingHorizontal: 20,
                                      isPassword: true,
                                      color: 'white',
                                      icon: 'password',
                                      passwordController: TextFieldController(),
                                    ),
                                    const SizedBox(height: 5),
                                    LabelText(label: "Role"),
                                    DropdownButtonFormField(
                                      iconSize: 0,
                                      decoration: InputDecoration(
                                        prefixIcon: Icon(
                                          Icons.person_pin_outlined,
                                          size: 26,
                                          color: Color.fromRGBO(0, 0, 0, 0.20),
                                        ),
                                        isDense: true,
                                        contentPadding: EdgeInsets.symmetric(
                                            vertical: 12, horizontal: 20),
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          borderSide: BorderSide(
                                            color: Color(0xFFF8F8F8),
                                            width: double.infinity,
                                          ),
                                        ),
                                        filled: true,
                                        fillColor: Color(0xFFF8F8F8),
                                      ),
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: lightGrey,
                                        fontWeight: FontWeight.w500,
                                      ),
                                      borderRadius: BorderRadius.circular(15),
                                      hint: Text('Select Role'),
                                      dropdownColor: Colors.white,
                                      value: Get.put<RoleController>(
                                              RoleController())
                                          .selectedRole
                                          .value,
                                      items: Get.put<RoleController>(
                                              RoleController())
                                          .roles
                                          .map(
                                            (String value) =>
                                                DropdownMenuItem<String>(
                                              value: value,
                                              child: Text(value),
                                            ),
                                          )
                                          .toList(),
                                      onChanged: (value) {
                                        if (value != null)
                                          Get.put<RoleController>(
                                                  RoleController())
                                              .updateSelectedRole(value);
                                      },
                                    ),
                                    const SizedBox(height: 24),
                                    ButtonGroup(
                                      buttonText: "Register",
                                      textSpan1: "Already have an account?",
                                      textSpan2: "Log in",
                                      routeText: RouteName.login,
                                      //routeButton: RouteName.login,
                                      isGetOff: true,
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
