import 'package:flutter/material.dart';
import 'package:meet_sync/constants/constant_text_style.dart';

class ScheduledStudentList extends StatelessWidget {
  final String jenis, name, time;

  const ScheduledStudentList({
    super.key,
    this.jenis = "middle",
    required this.name,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: jenis == "first"
            ? BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))
            : jenis == "last"
                ? BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20))
                : BorderRadius.circular(0),
        border: jenis == "first"
            ? Border(
                top: BorderSide(color: Colors.black),
                left: BorderSide(color: Colors.black),
                right: BorderSide(color: Colors.black),
                bottom: BorderSide(color: Colors.black),
              )
            : Border(
                left: BorderSide(color: Colors.black),
                right: BorderSide(color: Colors.black),
                bottom: BorderSide(color: Colors.black),
              ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: ConstantTextStyle.stylePoppins(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'Time',
              style: ConstantTextStyle.stylePoppins(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              time,
              style: ConstantTextStyle.stylePoppins(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
