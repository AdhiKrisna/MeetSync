import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatelessWidget {
  final String hintText;
  final double? paddingVertical;
  final bool isPassword, isDefault;

  const TextFormFieldWidget({
      super.key, 
      required this.hintText, 
      this.paddingVertical,
      this.isPassword = false,
      this.isDefault = true,
  });
  @override
  Widget build(BuildContext context) {
    return TextFormField(
          decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric( vertical: isDefault ? 20 : paddingVertical ?? 20, horizontal: 12), // <-- SEE HERE
              hintText: hintText,
              // fillColor: Colors.transparent,
              fillColor: Color.fromRGBO(255, 255, 255, 0.5), 
              filled: true,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15)
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(
                  color: Color.fromRGBO(0, 0, 0, 0.20), 
                  width: 2.0, 
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(
                  color: Color.fromRGBO(0, 0, 0, 0.20),
                  width: 2.0, 
                ),
              ),
          ),
        );
  }
}