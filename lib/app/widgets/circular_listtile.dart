import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_text_field.dart';

class CircularListTile extends StatelessWidget {

  final String title;
  final String subTitle;
  final IconData leadingIcon;
  final EdgeInsetsGeometry margin;
  const CircularListTile({required this.title,required this.margin, this.subTitle = '', required this.leadingIcon, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Container(
            margin: EdgeInsets.only(left: 10.h),
            padding: subTitle != ''
                ? EdgeInsets.symmetric(vertical: 5.h)
                : EdgeInsets.symmetric(vertical: 5.h),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.r),
            ),
            child: ListTile(
              leading: SizedBox(width: 45.w,),
              title: CustomTextField(
                text: title,
                fontSize: 14.sp,
                fontWeight: FontWeight.w700,
                lines: 1,
                font: '',
                textColor: Colors.black,
              ),
              subtitle: subTitle != ''? CustomTextField(
                text: subTitle,
                fontSize: 9.sp,
                fontWeight: FontWeight.w600,
                font: '',
                lines: 2,
                textColor: Colors.black38,
              ): null,
            ),
          ),
          Container(
            height: 70.h,
            width: 70.w,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
              border: Border.all(
                color: Colors.amber,
                width: 2.w,
              ),
            ),
            child: Icon(
              leadingIcon,
              size: 30.sp,
            ),
          ),
        ],
      ),
    );
  }
}
