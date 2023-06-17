import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widgets/circular_button.dart';
import '../../widgets/custom_text_field.dart';
import '../../widgets/custom_text_input_field.dart';

class SendMoneyPage extends StatelessWidget {
  SendMoneyPage({Key? key}) : super(key: key);

  final List<String> relationShip = [
    'Select relationship',
    'Friend',
    'Parents',
    'Relative',
    'Brother',
    'Manager'
  ];

  final List<String> purpose = [
    'Select purpose',
    'Friend',
    'Parents',
    'Relative',
    'Brother',
    'Manager'
  ];
  final String initialRelation = 'Select relationship';
  final String initialPurpose = 'Select purpose';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: CustomTextField(
          text: 'Send Money',
          fontWeight: FontWeight.w500,
          fontSize: 18.sp,
          font: '',
          textColor: Colors.white,
        ),
        centerTitle: true,
        actions: [
          Icon(
            Icons.more_vert,
            color: Colors.white,
            size: 25.h,
          ),
          SizedBox(
            width: 20.w,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.w),
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomTextField(
                      text: 'User name',
                      fontSize: 12.sp,
                      font: '',
                      fontWeight: FontWeight.w600,
                      textColor: Colors.black38,
                    ),
                    CustomTextField(
                      text: 'ID: 569569689',
                      fontSize: 18.sp,
                      font: '',
                      fontWeight: FontWeight.w700,
                      textColor: Colors.black,
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 12.h),
                child: DropdownButtonFormField(
                  value: initialRelation,
                  isDense: true,
                  items: relationShip
                      .map(
                        (e) => DropdownMenuItem(
                          value: e,
                          child: Container(
                            margin: EdgeInsets.only(left: 10.w, top: 3.h, bottom: 3.h),
                            child: CustomTextField(
                              text: e,
                              fontSize: 12.sp,
                              font: '',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      )
                      .toList(),
                  borderRadius: BorderRadius.circular(20.r),
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    isDense: true,
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.r),
                      borderSide: BorderSide.none,
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.r),
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.r),
                      borderSide: BorderSide.none,
                    ),
                    border: InputBorder.none,
                  ),
                  elevation: 0,
                  style: GoogleFonts.roboto(
                    fontSize: 15.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                  ),
                  onChanged: (value) {
                    // initialRelation = value!;
                  },
                ),
              ),
              DropdownButtonFormField(
                value: initialPurpose,
                isDense: true,
                items: purpose
                    .map((e) => DropdownMenuItem(
                          value: e,
                          child: Container(
                            margin: EdgeInsets.only(left: 10.w, top: 3.h, bottom: 3.h),
                            child: CustomTextField(
                              text: e,
                              fontSize: 12.sp,
                              font: '',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ))
                    .toList(),
                borderRadius: BorderRadius.circular(20.r),
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  isDense: true,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.r),
                    borderSide: BorderSide.none,
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.r),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.r),
                    borderSide: BorderSide.none,
                  ),
                  border: InputBorder.none,
                ),
                elevation: 0,
                style: GoogleFonts.roboto(
                  fontSize: 15.sp,
                  color: Colors.black45,
                  fontWeight: FontWeight.w700,
                ),
                onChanged: (value) {
                  // initialPurpose = value!;
                },
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 12.h),
                padding: EdgeInsets.only(top: 10.h, bottom: 10.h, left: 20.w),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: CustomTextInputField(
                        fillColor: Colors.white,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w700,
                        fontColor: Colors.black,
                        label: 'You send',
                        hintText: 'Amount',
                        labelFontColor: Colors.black45,
                        labelFontSize: 15.sp,
                        labelFontWeight: FontWeight.w700,
                      ),
                    ),
                    Container(
                      width: 1.w,
                      height: 40.h,
                      color: Colors.black26,
                    ),
                    SizedBox(width: 20.w),
                    CustomTextField(
                      text: 'USD',
                      fontWeight: FontWeight.w700,
                      fontSize: 18.sp,
                      font: '',
                      textColor: Colors.black,
                    ),
                    SizedBox(
                      width: 20.w,
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15.w, vertical: 8.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomTextField(
                      text: 'Fee',
                      fontWeight: FontWeight.w600,
                      fontSize: 16.sp,
                      font: '',
                      textColor: Colors.black38,
                    ),
                    CustomTextField(
                      text: '2.00 USD',
                      fontWeight: FontWeight.w600,
                      fontSize: 16.sp,
                      font: '',
                      textColor: Colors.black38,
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomTextField(
                      text: 'I will pay the fee',
                      fontWeight: FontWeight.w500,
                      fontSize: 14.sp,
                      font: '',
                      textColor: Colors.black38,
                    ),
                    CupertinoSwitch(
                      value: false,
                      activeColor: Colors.amber,
                      thumbColor: Colors.white,
                      trackColor: Colors.black26,
                      onChanged: (val) {},
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5.h),
              const Divider(
                color: Colors.black,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15.w, vertical: 4.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomTextField(
                      text: 'Total to pay',
                      fontWeight: FontWeight.w500,
                      fontSize: 14.sp,
                      font: '',
                      textColor: Colors.black38,
                    ),
                    CustomTextField(
                      text: '72.00 USD',
                      fontWeight: FontWeight.w700,
                      fontSize: 18.sp,
                      font: '',
                      textColor: Colors.black,
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 12.h),
                padding: EdgeInsets.only(top: 10.h, bottom: 10.h, left: 20.w),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: CustomTextInputField(
                        fillColor: Colors.white,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w700,
                        fontColor: Colors.black,
                        label: 'Recipient gets',
                        hintText: 'Amount',
                        labelFontColor: Colors.black45,
                        labelFontSize: 15.sp,
                        labelFontWeight: FontWeight.w700,
                      ),
                    ),
                    Container(
                      width: 1.w,
                      height: 40.h,
                      color: Colors.black26,
                    ),
                    SizedBox(width: 20.w),
                    CustomTextField(
                      text: 'USD',
                      fontWeight: FontWeight.w700,
                      fontSize: 18.sp,
                      font: '',
                      textColor: Colors.black,
                    ),
                    SizedBox(
                      width: 20.w,
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10.h, bottom: 40.h),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: ListTile(
                  leading: Container(
                    height: 45.h,
                    width: 45.w,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.amber,
                        width: 2.w,
                      ),
                    ),
                    child: Icon(
                      Icons.home_outlined,
                      size: 28.sp,
                    ),
                  ),
                  trailing: CupertinoSwitch(
                    value: true,
                    activeColor: Colors.amber,
                    thumbColor: Colors.white,
                    trackColor: Colors.black26,
                    onChanged: (val) {},
                  ),
                  subtitle: CustomTextField(
                    text: 'Moving Money Anonymously',
                    fontWeight: FontWeight.w500,
                    fontSize: 10.sp,
                    font: '',
                    textColor: Colors.black38,
                  ),
                  title: CustomTextField(
                    text: 'Ghostbox',
                    fontWeight: FontWeight.w700,
                    fontSize: 16.sp,
                    font: '',
                    textColor: Colors.black,
                  ),
                )
              ),
              CircularButton(
                text: 'PAY',
                onPressed: () {

                },
                width: 220.w,
                bottomLeft: Radius.circular(40.r),
                bottomRight: Radius.circular(40.r),
                topLeft: Radius.circular(40.r),
                topRight: Radius.circular(40.r),
              ),
              SizedBox(
                height: 16.h,
              ),
              InkWell(
                onTap: () {
                  // Get.toNamed(RoutePaths.loginScreen);
                },
                child: CustomTextField(
                  text: 'CANCEL',
                  fontWeight: FontWeight.bold,
                  fontSize: 16.sp,
                  font: '',
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}