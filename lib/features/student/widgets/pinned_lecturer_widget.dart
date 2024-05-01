import 'package:flutter/material.dart';
import 'package:meet_sync/constants/constant_color.dart';
import 'package:meet_sync/constants/constant_text_style.dart';

class PinnedLecturer extends StatelessWidget {
  final String jenis, name;
  const PinnedLecturer({
    super.key,
    this.jenis = "middle",
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: double.infinity,
      decoration: BoxDecoration(
        color: pink,
        borderRadius: jenis == "first"
            ? BorderRadius.only(
                topLeft: Radius.circular(8), topRight: Radius.circular(8))
            : jenis == "last"
                ? BorderRadius.only(
                    bottomLeft: Radius.circular(8),
                    bottomRight: Radius.circular(8))
                : BorderRadius.circular(0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              name,
              style: ConstantTextStyle.stylePoppins(
                color: btnPurple,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          IconButton(
            icon: new Image.asset('assets/icons/Pin.png'),
            color: Colors.yellow,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
