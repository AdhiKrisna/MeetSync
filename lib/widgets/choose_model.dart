
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meet_sync/constants/constant_color.dart';
import 'package:meet_sync/constants/constant_text_style.dart';
// import 'package:meet_sync/routes/route_name.dart';
// import 'package:meet_sync/widgets/button_group.dart';

class ChooseModel extends StatelessWidget {
  const ChooseModel({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Stack( // Gunakan Stack di sini
          children: [
            Positioned(
              top: 325,
              left: 24,
              right: 24,
              bottom: 200,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), 
                  color: pink,
                ),
                child: Column(
                  children: [
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          IconButton(
                            onPressed: () =>
                              Get.back(),
                                icon: Icon(Icons.arrow_back_ios_new_sharp, color: purple, size: 18,)
                          ),
                            Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 15),
                                    child: Image.asset(
                                      'assets/images/avatar.png',
                                      width: 100,
                                      height: 100,
                                    ),
                                  ),
                          ),
                          SizedBox(
                            width: 50,
                          ),
                        ],
                      ),
                    const SizedBox(height: 18.86),
                    Text(
                        'Login As',
                        style: ConstantTextStyle.stylePoppins(
                          fontSize: 20,
                          color: purple,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                    ),
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          onPressed: (){}, 
                          child: Text(
                            'Student',
                            style: ConstantTextStyle.stylePoppins(
                              fontSize: 16,
                              color: purple,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: (){}, 
                          child: Text(
                            'Lecturer',
                            style: ConstantTextStyle.stylePoppins(
                              fontSize: 16,
                              color: purple,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Container(
                      padding: const EdgeInsets.only(left: 24, right: 24),
                      child: Text(
                        '© MeetSync',
                        style: ConstantTextStyle.stylePoppins(
                          fontSize: 14,
                          color: purple,
                          fontWeight: FontWeight.bold,
                        ),
                    ),
                  ),
                  const SizedBox(height: 8),
                ],
              ),
            ),)
          ],
        ),
      );
  }
}