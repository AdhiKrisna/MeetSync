import 'package:flutter/material.dart' hide DatePickerTheme;
import 'package:get/get.dart';
import 'package:meet_sync/constants/constant_color.dart';
import 'package:meet_sync/constants/constant_text_style.dart';
import 'package:meet_sync/controller/auth_controller.dart';
import 'package:flutter_datetime_picker_plus/flutter_datetime_picker_plus.dart';

class TextFormFieldWidget extends StatelessWidget {
  final String hintText, color, icon;
  final double? paddingVertical, paddingHorizontal;
  final bool isPassword, isDefault, isIcon;
  TextFormFieldWidget({
    Key? key,
    required this.hintText,
    this.paddingVertical,
    this.paddingHorizontal,
    this.isPassword = false,
    this.isDefault = true,
    this.isIcon = true,
    this.color = 'transparent',
    this.icon = 'person',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AuthController authC = Get.find();
    return Center(
      child: Obx(
        () => TextFormField(
          obscureText: authC.getIsObscure.isTrue && isPassword ? true : false,
          decoration: InputDecoration(
            prefixIcon: isIcon == true
                ? Icon(
                    icon == 'person'
                        ? Icons.person
                        : (icon == 'email' ? Icons.email : Icons.lock),
                    color: Color.fromRGBO(0, 0, 0, 0.20),
                    size: icon == 'person' ? 32 : 26,
                  )
                : null,
            suffixIcon: isPassword == true
                ? IconButton(
                    onPressed: () => authC.setIsObscure(),
                    icon: Icon(
                      authC.getIsObscure.isTrue
                          ? Icons.visibility_off
                          : Icons.visibility,
                    ),
                  )
                : null,
            contentPadding: EdgeInsets.symmetric(
                vertical: isDefault ? 20 : paddingVertical ?? 20,
                horizontal:
                    isDefault ? 20 : paddingHorizontal ?? 12), // <-- SEE HERE
            hintText: hintText,
            fillColor:
                color == 'transparent' ? Colors.transparent : Color(0xFFF8F8F8),
            filled: true,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
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
        ),
      ),
    );
  }
}

class TextFormFieldCreateMeeting extends StatelessWidget {
  final String hintText;
  final int maxLines;
  const TextFormFieldCreateMeeting({
    super.key,
    required this.hintText,
    this.maxLines = 1,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxLines,
      style: ConstantTextStyle.stylePoppins(
        color: lightGrey,
        fontSize: 16,
      ),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: ConstantTextStyle.stylePoppins(
          color: lightGrey,
          fontSize: 16,
        ),
        fillColor: grey,
      ),
    );
  }
}

class TextFormFieldDate extends StatelessWidget {
  final String hintText;
  const TextFormFieldDate({
    super.key,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      readOnly: true,
      onTap: () {
        // Ketika tombol ditekan, tampilkan date picker
        DatePicker.showDatePicker(
          context,
          showTitleActions: true,
          onChanged: (date) {
            // Di sini Anda bisa melakukan sesuatu dengan tanggal yang dipilih jika perlu
          },
          onConfirm: (date) {
            // Di sini Anda bisa melakukan sesuatu dengan tanggal yang dipilih jika perlu
          },
          currentTime: DateTime.now(), // Waktu saat ini sebagai waktu default
          locale: LocaleType.en, // Lokalisasi, bisa disesuaikan
        );
      },
      style: ConstantTextStyle.stylePoppins(
        color: lightGrey,
        fontSize: 16,
      ),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: ConstantTextStyle.stylePoppins(
          color: lightGrey,
          fontSize: 16,
        ),
        fillColor: grey,
      ),
    );
  }
}
