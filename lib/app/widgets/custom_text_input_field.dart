import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextInputField extends StatelessWidget {
  final String label;
  final String hintText;
  final double fontSize;
  final double labelFontSize;
  final TextEditingController? controller;
  final Color? fillColor;
  final Color? fontColor;
  final Color? labelFontColor;
  final Widget? iconData;
  final FontWeight fontWeight;
  final FontWeight labelFontWeight;
  final bool obscureText;
  final Function(String)? onChange;

  const CustomTextInputField({this.iconData, required this.hintText, this.onChange, this.controller, required this.fontWeight, required this.labelFontColor, required this.labelFontSize, required this.labelFontWeight, required this.label, this.fontColor, this.obscureText = false, required this.fillColor, required this.fontSize,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      controller: controller,
      style: GoogleFonts.roboto(
        fontSize: fontSize,
          fontWeight: fontWeight,
          color: fontColor?? Colors.white,
      ),
      onChanged: onChange,
      decoration: InputDecoration(
        fillColor: fillColor,
        filled: true,
        contentPadding: EdgeInsets.zero,
        labelText: label,
        labelStyle: GoogleFonts.roboto(
          fontSize: labelFontSize,
          fontWeight: labelFontWeight,
          color: labelFontColor,
        ),
        hintText: hintText,
        hintStyle: GoogleFonts.roboto(
          fontSize: labelFontSize,
          fontWeight: labelFontWeight,
          color: labelFontColor,
        ),
        suffixIcon: iconData,
        alignLabelWithHint: true,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.circular(20.r),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.circular(20.r),
        ),
      ),
    );
  }
}
