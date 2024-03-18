
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meet_sync/constants/constant_color.dart';
import 'package:meet_sync/constants/constant_text_style.dart';
import 'package:meet_sync/widgets/choose_model.dart';

class ButtonGroup extends StatelessWidget {
  final String buttonText, textSpan1, textSpan2, routeName;
  final bool isGetOff;
  const ButtonGroup({
    super.key,
    required this.buttonText,
    required this.textSpan1,
    required this.textSpan2,
    this.isGetOff = false, // sekalian jadi button isLogin, kalau isGetOff true, maka button isLogin
    required this.routeName,

  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
            width: double.infinity,
            height: 62,
            child: ElevatedButton(
              onPressed: (){
                !isGetOff ? 
                  showDialog(
                    context: context,
                    builder: (context) => ChooseModel(),
                  )
                  : null;
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
                  text: 
                  TextSpan(
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
                            isGetOff ? Get.offNamed(routeName) : Get.toNamed(routeName);  
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