import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meet_sync/constants/constant_color.dart';
import 'package:meet_sync/constants/constant_text_style.dart';
import 'package:meet_sync/features/lecture/widgets/button.dart';
import 'package:meet_sync/routes/route_name.dart';

class LecturerProfile extends StatelessWidget {
  const LecturerProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Stack(
            clipBehavior:
                Clip.none, // biar CircleAvatar melewati batas Container
            children: [
              Container(
                padding: EdgeInsets.only(top: 75),
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: pink,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'My Profile',
                      style: ConstantTextStyle.stylePoppins(
                        color: btnPurple,
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: -75,
                left: 0,
                right: 0,
                child: Center(
                  child: CircleAvatar(
                    radius: 75,
                    backgroundImage: AssetImage('assets/images/avatar.png'),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 90),
          Text(
            'Dev@gmail.com',
            style: ConstantTextStyle.stylePoppins(
              color: darkGrey,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 25),
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 28, vertical: 10),
            decoration: BoxDecoration(
              color: grey2,
            ),
            child: Text(
              'My Account',
              style: ConstantTextStyle.stylePoppins(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 28, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Username',
                  style: ConstantTextStyle.stylePoppins(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Phone Number',
                  style: ConstantTextStyle.stylePoppins(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 28, vertical: 10),
            decoration: BoxDecoration(
              color: grey2,
            ),
            child: Text(
              'Logout',
              style: ConstantTextStyle.stylePoppins(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Get.offNamed(RouteName.login);
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 28, vertical: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.logout,
                    color: darkRed,
                    size: 30,
                  ),
                  SizedBox(width: 20),
                  Text(
                    'Logout',
                    style: ConstantTextStyle.stylePoppins(
                      color: darkRed,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 30),

          Button(
            text: 'Edit Profile',
            routeButton: RouteName.lecturerEditProfile,
          ),
        ],
      ),
    ));
  }
}
