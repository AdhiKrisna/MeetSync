import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meet_sync/constants/constant_color.dart';
import 'package:meet_sync/constants/constant_text_style.dart';

class Button extends StatelessWidget {
  final String text, textColor, routeButton;
  final double width, height;
  Button({
    super.key,
    required this.text,
    required this.routeButton,
    this.textColor = 'yellow',
    this.width = 245,
    this.height = 50,
  });
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
          Get.toNamed(routeButton);
      },
      child: Text(
        text,
        style: ConstantTextStyle.stylePoppins(
          fontSize: 16,
          color: textColor == 'yellow' ? yellowTextButton : Colors.white,
          fontWeight: FontWeight.w500,
        ),
      ),
      style: ElevatedButton.styleFrom(
        minimumSize: Size(width, height),
        backgroundColor: btnPurple,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );
  }
}
