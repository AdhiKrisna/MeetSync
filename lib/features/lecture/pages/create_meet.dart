import 'package:flutter/material.dart';
import 'package:meet_sync/constants/constant_color.dart';
import 'package:meet_sync/constants/constant_text_style.dart';
import 'package:meet_sync/widgets/text_form_field.dart';
import 'package:meet_sync/widgets/top_section.dart';

class CreateMeet extends StatelessWidget {
  const CreateMeet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TopSection(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                  border: Border.all(
                    color: Colors.black,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'New Meeting',
                      style: ConstantTextStyle.stylePoppins(
                        color: btnPurple,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextFormFieldCreateMeeting(hintText: 'Meeting Name'),
                    TextFormFieldCreateMeeting(hintText: 'Meeting Description', maxLines: 3),
                    TextFormFieldDate(hintText: 'dd/mm/yyyy'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
