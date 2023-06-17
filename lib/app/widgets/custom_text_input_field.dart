import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextInputField extends StatelessWidget {
  final String label;
  final String hintText;
  final double fontSize;
  final double labelFontSize;
  final Color? fillColor;
  final Color? fontColor;
  final Color? labelFontColor;
  final FontWeight fontWeight;
  final FontWeight labelFontWeight;
  final bool obscureText;

  const CustomTextInputField({required this.hintText, required this.fontWeight, required this.labelFontColor, required this.labelFontSize, required this.labelFontWeight, required this.label, this.fontColor, this.obscureText = false, required this.fillColor, required this.fontSize,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      style: GoogleFonts.roboto(
        fontSize: fontSize,
          fontWeight: fontWeight,
          color: fontColor?? Colors.white,
      ),
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
