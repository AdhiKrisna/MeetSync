import 'package:flutter/material.dart' hide DatePickerTheme;
import 'package:get/get.dart';
import 'package:meet_sync/constants/constant_color.dart';
import 'package:meet_sync/constants/constant_text_style.dart';
import 'package:meet_sync/controller/auth_controller.dart';
import 'package:flutter_datetime_picker_plus/flutter_datetime_picker_plus.dart';
import 'package:intl/intl.dart';

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

class TextFormFieldCreateMeeting extends StatefulWidget {
  final String hintText;
  final int maxLines;
  final TextInputType keyboardType;
  final Function()? onValueChanged;

  const TextFormFieldCreateMeeting({
    super.key,
    required this.hintText,
    this.maxLines = 1,
    this.keyboardType = TextInputType.text,
    this.onValueChanged,
  });

  @override
  State<TextFormFieldCreateMeeting> createState() => _TextFormFieldCreateMeetingState();
}

class _TextFormFieldCreateMeetingState extends State<TextFormFieldCreateMeeting> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: widget.keyboardType,
      maxLines: widget.maxLines,
      style: ConstantTextStyle.stylePoppins(
        color: Colors.black,
        fontSize: 20,
      ),
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: ConstantTextStyle.stylePoppins(
          color: lightGrey,
          fontSize: 20,
        ),
      ),
      onChanged: (value) => widget.onValueChanged?.call(),
    );
  }
}

class TextFormFieldDate extends StatefulWidget {
  final String labelText;
  const TextFormFieldDate({
    super.key,
    this.labelText = 'Date (YYYY-MM-DD)',
  });
  @override
  State<TextFormFieldDate> createState() => _TextFormFieldDateState();
}

class _TextFormFieldDateState extends State<TextFormFieldDate> {
  TextEditingController _dateController = TextEditingController();
  @override
  initState() {
    super.initState();
    _dateController = TextEditingController(
      text: DateFormat('yyyy-MM-dd').format(DateTime.now()),
    );
  }
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _dateController,
      readOnly: true,
      onTap: () {
        DatePicker.showDatePicker(
          context,
          showTitleActions: true,
          onConfirm: (date) {
            setState(() {
              _dateController.text = DateFormat('yyyy-MM-dd').format(date);
            });
          },
          currentTime: DateTime.now(), // Waktu saat ini sebagai waktu default
          locale: LocaleType.en, // Lokalisasi, bisa disesuaikan
        );
      },
      style: ConstantTextStyle.stylePoppins(
        color: Colors.black,
        fontSize: 20,
      ),
      decoration: InputDecoration(
        labelStyle: ConstantTextStyle.stylePoppins(
          color: lightGrey,
          fontSize: 20,
        ),
        labelText: widget.labelText,
        hintStyle: ConstantTextStyle.stylePoppins(
          color: lightGrey,
          fontSize: 20,
        ),
      ),
    );
  }
  //@override
  //void dispose() {
  // _dateController.dispose();
  //super.dispose();
  //}
}



class TextFormFieldTime extends StatefulWidget {
  final String labelText;
  final Function()? onValueChanged;
  const TextFormFieldTime({
    super.key,
    required this.labelText,
    this.onValueChanged,
  });
  @override
  State<TextFormFieldTime> createState() => _TextFormFieldTimeState();
}
class _TextFormFieldTimeState extends State<TextFormFieldTime> {
  TextEditingController _timeController = TextEditingController();
  @override
  initState() {
    super.initState();
    _timeController = TextEditingController(
      text: DateFormat('HH:mm').format(DateTime.now()),
    );
  }
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _timeController,
      readOnly: true,
      onTap: () {
        DatePicker.showTimePicker(
          context,
          showTitleActions: true,
          showSecondsColumn: false,
          onConfirm: (time) {
            setState(() {
              // Format waktu yang dipilih (HH:mm)
              _timeController.text = '${time.hour}:${time.minute}';
              widget.onValueChanged?.call();
            });
          },
          currentTime: DateTime.now(), // Waktu saat ini sebagai waktu default
          locale: LocaleType.en, // Lokalisasi, bisa disesuaikan
        );
      },
      style: ConstantTextStyle.stylePoppins(
        color: Colors.black,
        fontSize: 20,
      ),
      decoration: InputDecoration(
        labelStyle: ConstantTextStyle.stylePoppins(
          color: lightGrey,
          fontSize: 20,
        ),
        labelText: widget.labelText,
        hintStyle: ConstantTextStyle.stylePoppins(
          color: lightGrey,
          fontSize: 20,
        ),
      ),
    );
  }
}
