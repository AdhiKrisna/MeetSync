// import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:meet_sync/constants/constant_color.dart';
import 'package:meet_sync/constants/constant_text_style.dart';
import 'package:meet_sync/routes/route_name.dart';
import 'package:meet_sync/widgets/button_group.dart';
import 'package:meet_sync/widgets/text_form_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(top: 84, bottom: 19),
                child: Center(
                  child:
                    Image(
                        image: AssetImage('assets/images/login_image.png'),
                        width: 293,
                        height: 230,
                    ),
                ),
              ),
              const SizedBox(height: 40),
              Container(
                  padding: EdgeInsets.only(left: 23, right: 23),
                  child: 
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Login Now',
                        style: ConstantTextStyle.stylePoppins(
                          fontSize: 24,
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 25),
                      TextFormFieldWidget(hintText: "Username/Email", isIcon: false,),
                      const SizedBox(height: 21),
                      TextFormFieldWidget(hintText: "Password", isPassword: true, isIcon: false,),
                      const SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'Forgot Password?',
                            style: ConstantTextStyle.stylePoppins(
                              fontSize: 16,
                              color: purple,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 46),
                      ButtonGroup(buttonText: "Login", textSpan1: "Need an Account?", textSpan2: "Register", routeName: RouteName.register,),
                      
                    ],
                  ),
                ),
              ],
            ),
        ),
      ),
    );
  }
}
