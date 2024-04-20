import 'package:flutter/material.dart';
import 'package:meet_sync/constants/constant_color.dart';
import 'package:meet_sync/constants/constant_text_style.dart';

class SearchFieldDosen extends StatelessWidget {
  final String hintText;
  SearchFieldDosen({
    Key? key,
    this.hintText = 'Search Lecturer',
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextFormField(
        style: ConstantTextStyle.stylePoppins(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
        decoration: InputDecoration(
          hintStyle: ConstantTextStyle.stylePoppins(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
          suffixIcon: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: Colors.white,
              size: 24,
            ),
          ),
          contentPadding: EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 20,
          ),
          focusColor: Colors.white,
          fillColor: btnPurple,
          hintText: hintText,
          filled: true,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
          focusedBorder:
              OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
        ),
      ),
    );
  }
}
