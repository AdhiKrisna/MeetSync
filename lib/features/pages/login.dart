import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:meet_sync/constants/constant_color.dart';
import 'package:meet_sync/constants/constant_text_style.dart';
import 'package:meet_sync/widgets/text_form_field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child:
              Image(
                  image: AssetImage('assets/images/login_image.png'),
                  width: 293,
                  height: 230,
              ),
          ),
          const SizedBox(height: 40),
          Container(
              padding: EdgeInsets.only(top: 39, left: 23, right: 23),
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
                  TextFormFieldWidget(hintText: "Username/Email"),
                  const SizedBox(height: 21),
                  TextFormFieldWidget(hintText: "Password"),
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
                  const SizedBox(height: 56),
                  SizedBox(
                    width: double.infinity,
                    height: 62,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Login',
                        style: ConstantTextStyle.stylePoppins(
                          fontSize: 18,
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
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Need an Account? ',
                        style: ConstantTextStyle.stylePoppins(
                          fontSize: 12,
                          color: grey,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        ' Register',
                        style: ConstantTextStyle.stylePoppins(
                          fontSize: 12,
                          color: purple,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),

                ],
              ),
            ),
          ],
        ),
    );
  }
}
