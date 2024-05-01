import 'package:flutter/material.dart';
import 'package:meet_sync/constants/constant_color.dart';
import 'package:meet_sync/constants/constant_text_style.dart';

class TopSection extends StatelessWidget {
  final bool radiusCircular;
  const TopSection({
    super.key,
    this.radiusCircular = true,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 40),
      height: 157,
      width: double.infinity,
      decoration: BoxDecoration(
        color: pink,
        borderRadius: BorderRadius.only(
          bottomLeft: radiusCircular? Radius.circular(30) : Radius.circular(0),
          bottomRight: radiusCircular? Radius.circular(30) : Radius.circular(0),
        ),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hello,',
                  style: ConstantTextStyle.stylePoppins(
                    color: orange,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  'What is your schedule for today?',
                  style: ConstantTextStyle.stylePoppins(
                    color: brown,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('assets/images/user_icon.png'),
            ),
          ),
        ],
      ),
    );
  }
}
