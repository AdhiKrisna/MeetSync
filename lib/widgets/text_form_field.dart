import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meet_sync/controller/auth_controller.dart';

class TextFormFieldWidget extends StatelessWidget {
  final String hintText, color, icon;
  final double? paddingVertical, paddingHorizontal;
  final bool isPassword, isDefault, isIcon;
   TextFormFieldWidget({
      Key? key, 
      required this.hintText, 
      this.paddingVertical,
      this.paddingHorizontal,
      this.isPassword = false,
      this.isDefault = true,
      this.isIcon = true,
      this.color = 'transparent',
      this.icon = 'person',
  }) : super(key: key);
  final authC = Get.put(AuthController());



  @override
  Widget build(BuildContext context) {
    return Center(
      child: Obx(
        () =>TextFormField(
            
              obscureText: authC.getIsObscure.isTrue && isPassword ? true : false,
              decoration: InputDecoration(
                  prefixIcon: isIcon == true
                    ? Icon(
                        icon == 'person' ? Icons.person : (icon == 'email' ? Icons.email : Icons.lock),
                        color: Color.fromRGBO(0, 0, 0, 0.20),
                        size: icon == 'person' ? 32 : 26,
                      )
                    : null,
                  suffixIcon: isPassword == true
                    ? IconButton(
                        onPressed: () => authC.setIsObscure(),
                          icon:  Icon(
                            authC.getIsObscure.isTrue ? Icons.visibility_off : Icons.visibility,
                          ),
                        )
                  : null,
                  contentPadding: EdgeInsets.symmetric( vertical: isDefault ? 20 : paddingVertical ?? 20, horizontal: isDefault ? 20 : paddingHorizontal ?? 12), // <-- SEE HERE
                  hintText: hintText,
                  fillColor: color == 'transparent' ? Colors.transparent : Color(0xFFF8F8F8),
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                      color: Color.fromRGBO(0, 0, 0, 0.20), 
                      width: 2.0, 
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                      color: Color.fromRGBO(0, 0, 0, 0.20),
                      width: 2.0, 
                    ),
                  ),
              ),
            ),
      ),
    );
  }
}