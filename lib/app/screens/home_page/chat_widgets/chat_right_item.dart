import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

Widget chatRightItem(String message, BuildContext context){
  return Container(
    padding: EdgeInsets.symmetric( horizontal: 10.w, vertical: 5.h),
    alignment: Alignment.topRight,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          constraints: BoxConstraints(
            maxWidth: 230.w,
            maxHeight: 1500.w,
          ),
          padding: EdgeInsets.only(
            bottom: 13.w,
            top: 5.w,
            right: 35.w,
            left: 12.w,
          ),
          margin: EdgeInsets.only(right: 20.w),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.secondary,
            borderRadius: BorderRadius.circular(10.r),
          ),
          child:  Text(
            message,
            maxLines: 10,
            textAlign: TextAlign.justify,
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w400,
              fontSize: 13.sp,
              color: Colors.white,
            ),
            overflow: TextOverflow.ellipsis,
          ),
        ),
        SizedBox(height: 5.w),
        Text(
          'Dec, 12:50' ,
          style: GoogleFonts.poppins(
            fontSize: 11.sp,
            fontWeight: FontWeight.w600,
            color: Colors.black38
          ),
          overflow: TextOverflow.ellipsis,
        ),
      ],
    ),
  );
}
