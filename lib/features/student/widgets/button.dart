import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meet_sync/constants/constant_color.dart';
import 'package:meet_sync/constants/constant_text_style.dart';
import 'package:meet_sync/features/student/controller/screen_controller.dart';
import 'package:meet_sync/features/student/controller/time_button_controller.dart';

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
  final StudentScreenController screenC = Get.find();
  @override
  
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
          // if(screenC.isCheckMeeting.isFalse) screenC.setIsMeeting();
          // print("is check meeting from button : ${screenC.isCheckMeeting.isTrue}");
          routeButton == "back" ? Get.back() : Get.toNamed(routeButton);
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
class SelectTimeButton extends StatelessWidget {
  final String text, textColor, routeButton;
  final double width, height;
  final int selectedIndex;
  SelectTimeButton({
    super.key,
    this.text = "Select",
    required this.routeButton,
    required this.selectedIndex,
    this.textColor = 'yellow',
    this.width = 245,
    this.height = 50,
  });
  final StudentScreenController screenC = Get.find();
  @override
  
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
          // if(screenC.isCheckMeeting.isFalse) screenC.setIsMeeting();
          // print("is check meeting from button : ${screenC.isCheckMeeting.isTrue}");
          screenC.changeIndex(0);
          print("selcted index time : $selectedIndex");
          routeButton ==  Get.toNamed(routeButton);
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

class TimeButton extends StatelessWidget {
  final String text;
  final double width, height;
  final bool selected;
  final int index;

  TimeButton({
    super.key,
    required this.text,
    this.width = 95,
    this.height = 50,
    this.selected = false,
    this.index = 0,
  
  });
   final TimeButtonController buttonController = Get.find();
  @override
  
  Widget build(BuildContext context) {
    return Obx(() => ElevatedButton(
          onPressed: () {
            buttonController.setSelectedIndex(index); 
          },
          child:  Text(
              text,
              style: ConstantTextStyle.stylePoppins(
                fontSize: 14,
                color: buttonController.isButtonSelected(index) ? yellow : btnPurple,
                fontWeight: FontWeight.w700,
              ),
            ),
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.all(5),
            minimumSize: Size(width, height),
            backgroundColor: buttonController.isButtonSelected(index) ? btnPurple : grey2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        )
    );
  }
}
