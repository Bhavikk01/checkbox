import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextField extends StatelessWidget {
  final String text;
  final String font;
  final double fontSize;
  final Color? textColor;
  final TextAlign? textAlign;
  final FontWeight fontWeight;
  final int lines;

  const CustomTextField({this.textColor,this.lines = 10, required this.text,this.textAlign, required this.font, required this.fontSize, required this.fontWeight, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign?? TextAlign.start,
      maxLines: lines,
      overflow: TextOverflow.ellipsis,
      style: font == 'roboto'?
      GoogleFonts.roboto(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: textColor
      ): GoogleFonts.poppins(
          fontSize: fontSize,
          fontWeight: fontWeight,
          color: textColor?? Colors.black
      )
    );
  }
}
