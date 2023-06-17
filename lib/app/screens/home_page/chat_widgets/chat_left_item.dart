import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';


Widget chatLeftItem(String message, BuildContext context){
  return Container(
    padding: EdgeInsets.symmetric( horizontal: 8.w),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.only(
              bottom: 13.w,
              top: 5.w,
              right: 35.w,
              left: 12.w,
          ),
          margin: EdgeInsets.only(bottom: 3.h, top: 15.h, left: 20.w),
          constraints: BoxConstraints(
            maxWidth: 230.w,
            maxHeight: 1500.w,
          ),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.r),
          ),
          child: Text(
            message,
            textAlign: TextAlign.start,
            maxLines: 10,
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w400,
                fontSize: 13.sp,
                color: Colors.black
            ),
            overflow: TextOverflow.ellipsis,
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 10.w),
          child: Text(
            'Dec, 12:50' ,
            style: GoogleFonts.poppins(
              fontSize: 10.sp,
              fontWeight: FontWeight.w400,
              color: Colors.black
            ),
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    ),
  );
}
