import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatelessWidget {
    const TextFormFieldWidget({
      super.key, 
      required this.hintText, 
    });

  final String hintText;
  

  @override
  Widget build(BuildContext context) {
    return TextFormField(
          decoration: InputDecoration(
              hintText: hintText,
              fillColor: Color.fromARGB(255, 255, 255, 255),
              filled: true,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15)
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(
                  color: Color.fromRGBO(0, 0, 0, 0.20), // Warna outline border saat terfokus
                  width: 2.0, // Lebar outline border saat terfokus
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(
                  color: Color.fromRGBO(0, 0, 0, 0.20),// Warna outline border saat widget dalam keadaan non-interaktif
                  width: 2.0, // Lebar outline border saat widget dalam keadaan non-interaktif
                ),
              ),
          ),
        );
  }
}