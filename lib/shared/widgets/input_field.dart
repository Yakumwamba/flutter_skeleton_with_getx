import 'package:flutter/material.dart';
import 'package:match_mamker/shared/constants/colors.dart';

class InputField extends StatelessWidget {
  final TextEditingController controller;
  final TextInputType keyboardType;
  final String labelText;
  final String placeholder;
  final Color color;
  final double fontSize;
  final bool password;
  final Image? Function(Image?)? prefixIcon;
  final String? Function(String?)? validator;
  final String? Function(String?)? prefixText;

  InputField(
      {required this.controller,
      this.keyboardType = TextInputType.text,
      this.labelText = '',
      this.placeholder = '',
      this.color = Colors.black,
      this.fontSize = 22.0,
      this.password = false,
      this.validator,
      this.prefixIcon,
      this.prefixText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: 3,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: ColorConstants.darkGray, width: 0.50),
        ),
        fillColor: Colors.transparent,
        contentPadding: EdgeInsets.symmetric(vertical: 10.0),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey,
          ),
        ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        labelText: this.labelText,
        labelStyle: TextStyle(
          fontSize: fontSize - 2,
          color: color,
          height: 0.2,
          fontWeight: FontWeight.normal,
        ),
        hintText: this.placeholder,
        hintStyle: TextStyle(
          fontSize: fontSize,
          color: color,
          fontWeight: FontWeight.normal,
        ),
        filled: true,
        isDense: true,
      ),
      controller: this.controller,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: FontWeight.normal,
      ),
      keyboardType: this.keyboardType,
      obscureText: this.password,
      autocorrect: false,
      validator: this.validator,
    );
  }
}
