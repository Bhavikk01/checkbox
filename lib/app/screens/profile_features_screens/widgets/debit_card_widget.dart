import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../widgets/custom_text_field.dart';

class DebitCardDesign extends StatelessWidget {

  final String cardHolderName;
  final String cardNumber;
  final String expiryDate;
  final String cardIcon;
  const DebitCardDesign({required this.cardHolderName, required this.cardIcon, required this.cardNumber, required this.expiryDate, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 30.h, bottom: 10.h, left: 30.w, right: 10.w),
      margin: EdgeInsets.symmetric(vertical: 10.h),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Wrap(
                children: List.generate(
                  4,
                      (index) => Container(
                    height: 7.h,
                    width: 7.w,
                    margin: EdgeInsets.only(right: 3.w),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 15.w,),
              Wrap(
                children: List.generate(
                  4,
                      (index) => Container(
                    height: 7.h,
                    width: 7.w,
                    margin: EdgeInsets.only(right: 3.w),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 15.w,),
              Wrap(
                children: List.generate(
                  4,
                      (index) => Container(
                    height: 7.h,
                    width: 7.w,
                    margin: EdgeInsets.only(right: 3.w),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 15.w,),
              CustomTextField(
                text: cardNumber.substring(12),
                fontSize: 20.sp,
                fontWeight: FontWeight.w700,
                font: '',
                textColor: Colors.white,
              ),
            ],
          ),
          SizedBox(height: 10.h),
          CustomTextField(
            text: expiryDate,
            fontSize: 12.sp,
            fontWeight: FontWeight.w600,
            font: '',
            textColor: Colors.white,
          ),
          SizedBox(height: 10.h),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              CustomTextField(
                text: cardHolderName,
                fontSize: 15.sp,
                fontWeight: FontWeight.w500,
                font: '',
                textColor: Colors.white60,
              ),
              Image.asset(
                cardIcon,
                height: 60.h,
                width: 80.w,
              )
            ],
          ),
        ],
      ),
    );
  }
}
