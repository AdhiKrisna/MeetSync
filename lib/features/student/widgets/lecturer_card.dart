import 'package:flutter/material.dart';
import 'package:meet_sync/constants/constant_color.dart';
import 'package:meet_sync/constants/constant_text_style.dart';
import 'package:meet_sync/routes/route_name.dart';
import 'package:meet_sync/features/student/widgets/button.dart';

class TodayLecturerCard extends StatelessWidget {
  const TodayLecturerCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.black,
          width: 1,
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 9,
              bottom: 2,
              left: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 22,
                      backgroundImage:
                          AssetImage('assets/images/user_icon.png'),
                    ),
                    const SizedBox(width: 7),
                    Text(
                      'Atlas Riversong',
                      style: ConstantTextStyle.stylePoppins(
                        color: btnPurple,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                IconButton(
                  icon: new Image.asset(
                    'assets/icons/Pin.png',
                    width: 20,
                    height: 20,
                  ),
                  color: Colors.yellow,
                  onPressed: () {},
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              height: 1,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 15),
          Text(
            'Perwalian 2024',
            style: ConstantTextStyle.stylePoppins(
              color: btnPurple,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 15),
          Button(
            text: 'Check Meeting',
            routeButton: RouteName.studentCheckMeeting,
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}


class RegisterLecturerCard extends StatelessWidget {
  const RegisterLecturerCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.black,
          width: 1,
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 9,
              bottom: 2,
              left: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 22,
                      backgroundImage:
                          AssetImage('assets/images/user_icon.png'),
                    ),
                    const SizedBox(width: 7),
                    Text(
                      'Atlas Riversong', 
                      style: ConstantTextStyle.stylePoppins(
                        color: btnPurple,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                IconButton(
                  icon: new Image.asset(
                    'assets/icons/Pin.png',
                    width: 20,
                    height: 20,
                  ),
                  color: Colors.yellow,
                  onPressed: () {},
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              height: 1,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Perwalian 2024',
                  style: ConstantTextStyle.stylePoppins(
                    color: btnPurple,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text('10.00 - 11.00',
                    style: ConstantTextStyle.stylePoppins(
                      color: btnPurple,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    )),
              ],
            ),
          ),
          const SizedBox(height: 15),
          Button(
            text: 'Register Meeting',
            routeButton: RouteName.checkRegisterMeeting,
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
