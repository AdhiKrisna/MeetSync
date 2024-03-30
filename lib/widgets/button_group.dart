import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meet_sync/constants/constant_color.dart';
import 'package:meet_sync/constants/constant_text_style.dart';

class ButtonGroup extends StatelessWidget {
  final String buttonText, textSpan1, textSpan2, routeText, routeButton;
  final bool isGetOff;
  const ButtonGroup({
    super.key,
    required this.buttonText,
    required this.textSpan1,
    required this.textSpan2,
    this.isGetOff =
        false, // sekalian jadi button isLogin, kalau isGetOff true, maka button isLogin
    required this.routeText,
    required this.routeButton,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: 62,
          child: ElevatedButton(
            onPressed: () {
              Get.offNamed(routeButton);
            },
            child: Text(
              buttonText,
              style: ConstantTextStyle.stylePoppins(
                fontSize: 16,
                color: yellow,
                fontWeight: FontWeight.bold,
              ),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: btnPurple,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
              text: TextSpan(
                text: textSpan1 + '',
                style: ConstantTextStyle.stylePoppins(
                  fontSize: 12,
                  color: grey,
                  fontWeight: FontWeight.bold,
                ),
                children: [
                  TextSpan(
                    text: ' ' + textSpan2,
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        isGetOff
                            ? Get.offNamed(routeText)
                            : Get.toNamed(routeText);
                      },
                    style: ConstantTextStyle.stylePoppins(
                      fontSize: 12,
                      color: purple,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
