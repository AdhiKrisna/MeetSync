import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meet_sync/constants/constant_color.dart';
import 'package:meet_sync/constants/constant_text_style.dart';
import 'package:meet_sync/features/student/widgets/button.dart';
import 'package:meet_sync/routes/route_name.dart';
import 'package:meet_sync/widgets/text_form_field.dart';

class StudentEditProfile extends StatelessWidget {
  const StudentEditProfile({super.key});

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
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: pink,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 68, left: 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IconButton(
                        onPressed: () {
                          Get.back();
                        },
                        icon: Icon(
                          Icons.arrow_back,
                          color: btnPurple,
                          size: 30,
                        ),
                      ),
                      Expanded(
                          child: SizedBox.shrink()), // Untuk mengisi ruang kosong
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: -75,
                left: 0,
                right: 0,
                child: Column(
                  children: [
                    Text(
                      'My Profile',
                      style: ConstantTextStyle.stylePoppins(
                        color: btnPurple,
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    CircleAvatar(
                      radius: 75,
                      backgroundImage: AssetImage('assets/images/avatar.png'),
                    ),
                    SizedBox(height: 10),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 90),
          Text(
            'Change Profile Picture',
            style: ConstantTextStyle.stylePoppins(
              color: darkGrey,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 20),
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 28, vertical: 10),
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
                const SizedBox(height: 10),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'New Username',
                    hintStyle: ConstantTextStyle.stylePoppins(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: grey, width: 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  'Email',
                  style: ConstantTextStyle.stylePoppins(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Email',
                    hintStyle: ConstantTextStyle.stylePoppins(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: grey, width: 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  'Phone Number',
                  style: ConstantTextStyle.stylePoppins(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Phone Number',
                    hintStyle: ConstantTextStyle.stylePoppins(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: grey, width: 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  'Password',
                  style: ConstantTextStyle.stylePoppins(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 10),
                TextFormFieldWidget(
                  hintText: "Enter Your Password",
                  isDefault: false,
                  paddingVertical: 10,
                  paddingHorizontal: 20,
                  isPassword: true,
                  icon: 'password',
                ),
                const SizedBox(height: 20),
                Text(
                  'Confirm Password',
                  style: ConstantTextStyle.stylePoppins(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 10),
                TextFormFieldWidget(
                  hintText: "Confirm Your Password",
                  isDefault: false,
                  paddingVertical: 10,
                  paddingHorizontal: 20,
                  isPassword: true,
                  icon: 'password',
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 28, vertical: 10),
            decoration: BoxDecoration(
              color: grey2,
            ),
            child: Button(
                text: "Update Profile", routeButton: RouteName.homeStudent),
          ),
        ],
      ),
    ));
  }
}
