import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../routes/route_paths.dart';
import '../../widgets/circular_button.dart';
import '../../widgets/custom_text_field.dart';
import '../../widgets/custom_text_input_field.dart';

class RegistrationPage extends GetView {
  RegistrationPage({super.key});
  final List<String> relationShip = [
    'State',
    'Indore',
    'Pune',
    'Rachi',
    'Delhi',
    'Mumbai',
    'Banglore'
  ];

  final List<String> purpose = [
    'Select purpose',
    'Friend',
    'Parents',
    'Relative',
    'Brother',
    'Manager',
  ];
  final String initialRelation = 'State';
  final String initialPurpose = 'Select purpose';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: CustomTextField(
          text: 'Registration',
          fontWeight: FontWeight.w500,
          fontSize: 18.sp,
          font: '',
          textColor: Colors.white,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
            margin: EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomTextField(
                    text: "Basic Info",
                    font: 'roboto',
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w700),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10.h),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 5.h),
                        padding: EdgeInsets.only(top: 13.h, left: 20.w),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                        child: CustomTextInputField(
                            fillColor: Colors.white,
                            fontSize: 18.sp,
                            fontColor: Colors.black,
                            fontWeight: FontWeight.w700,
                            label: '',
                            hintText: 'First Name',
                            labelFontColor: Colors.black38,
                            labelFontSize: 14.sp,
                            labelFontWeight: FontWeight.w500,
                            onChange: (value) {
                              controller.searchUserByName(value);
                            }),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 5.h),
                        padding: EdgeInsets.only(top: 13.h, left: 20.w),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                        child: CustomTextInputField(
                            fillColor: Colors.white,
                            fontSize: 18.sp,
                            fontColor: Colors.black,
                            fontWeight: FontWeight.w700,
                            label: '',
                            hintText: 'Last Name',
                            labelFontColor: Colors.black38,
                            labelFontSize: 14.sp,
                            labelFontWeight: FontWeight.w500,
                            onChange: (value) {
                              controller.searchUserByName(value);
                            }),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 5.h),
                        padding: EdgeInsets.only(top: 13.h, left: 20.w),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                        child: CustomTextInputField(
                            fillColor: Colors.white,
                            fontSize: 18.sp,
                            fontColor: Colors.black,
                            fontWeight: FontWeight.w700,
                            label: '',
                            hintText: 'Enter Date of Birth',
                            labelFontColor: Colors.black38,
                            labelFontSize: 14.sp,
                            labelFontWeight: FontWeight.w500,
                            onChange: (value) {
                              controller.searchUserByName(value);
                            }),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 5.h),
                        padding: EdgeInsets.only(top: 13.h, left: 20.w),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                        child: CustomTextInputField(
                            fillColor: Colors.white,
                            fontSize: 18.sp,
                            fontColor: Colors.black,
                            fontWeight: FontWeight.w700,
                            label: '',
                            hintText: 'Social security number (SSN)',
                            labelFontColor: Colors.black38,
                            labelFontSize: 14.sp,
                            labelFontWeight: FontWeight.w500,
                            onChange: (value) {
                              controller.searchUserByName(value);
                            }),
                      ),
                    ],
                  ),
                ),
                CustomTextField(
                    text: "CA\$HBOX Account",
                    font: 'roboto',
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w700),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10.h),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 5.h),
                        padding: EdgeInsets.only(top: 13.h, left: 20.w),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                        child: CustomTextInputField(
                            fillColor: Colors.white,
                            fontSize: 18.sp,
                            fontColor: Colors.black,
                            fontWeight: FontWeight.w700,
                            label: '',
                            hintText: 'Phone number',
                            labelFontColor: Colors.black38,
                            labelFontSize: 14.sp,
                            labelFontWeight: FontWeight.w500,
                            onChange: (value) {
                              controller.searchUserByName(value);
                            }),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 5.h),
                        padding: EdgeInsets.only(top: 13.h, left: 20.w),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                        child: CustomTextInputField(
                            fillColor: Colors.white,
                            fontSize: 18.sp,
                            fontColor: Colors.black,
                            fontWeight: FontWeight.w700,
                            label: '',
                            hintText: 'E-mail address',
                            labelFontColor: Colors.black38,
                            labelFontSize: 14.sp,
                            labelFontWeight: FontWeight.w500,
                            onChange: (value) {
                              controller.searchUserByName(value);
                            }),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 5.h),
                        padding: EdgeInsets.only(top: 13.h, left: 20.w),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                        child: CustomTextInputField(
                            fillColor: Colors.white,
                            fontSize: 18.sp,
                            fontColor: Colors.black,
                            fontWeight: FontWeight.w700,
                            label: '',
                            hintText: 'Password',
                            labelFontColor: Colors.black38,
                            labelFontSize: 14.sp,
                            labelFontWeight: FontWeight.w500,
                            onChange: (value) {
                              controller.searchUserByName(value);
                            }),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 5.h),
                        padding: EdgeInsets.only(top: 13.h, left: 20.w),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                        child: CustomTextInputField(
                            fillColor: Colors.white,
                            fontSize: 18.sp,
                            fontColor: Colors.black,
                            fontWeight: FontWeight.w700,
                            label: '',
                            hintText: 'Repeat password',
                            labelFontColor: Colors.black38,
                            labelFontSize: 14.sp,
                            labelFontWeight: FontWeight.w500,
                            onChange: (value) {
                              controller.searchUserByName(value);
                            }),
                      ),
                    ],
                  ),
                ),
                Column(
                  //mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomTextField(
                        text: "Address",
                        font: 'roboto',
                        fontSize: 17.sp,
                        fontWeight: FontWeight.w700),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10.h),
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 5.h),
                            padding: EdgeInsets.only(top: 13.h, left: 20.w),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20.r),
                            ),
                            child: CustomTextInputField(
                                fillColor: Colors.white,
                                fontSize: 18.sp,
                                fontColor: Colors.black,
                                fontWeight: FontWeight.w700,
                                label: '',
                                hintText: 'Street and number',
                                labelFontColor: Colors.black38,
                                labelFontSize: 14.sp,
                                labelFontWeight: FontWeight.w500,
                                onChange: (value) {
                                  controller.searchUserByName(value);
                                }),
                          ),
                          Row(
                            children: [
                              Container(
                                width: 120.w,
                                margin: EdgeInsets.symmetric(vertical: 5.h),
                                padding: EdgeInsets.only(top: 13.h, left: 20.w),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20.r),
                                ),
                                child: CustomTextInputField(
                                    fillColor: Colors.white,
                                    fontSize: 18.sp,
                                    fontColor: Colors.black,
                                    fontWeight: FontWeight.w700,
                                    label: '',
                                    hintText: 'ZIP Code',
                                    labelFontColor: Colors.black38,
                                    labelFontSize: 14.sp,
                                    labelFontWeight: FontWeight.w500,
                                    onChange: (value) {
                                      controller.searchUserByName(value);
                                    }),
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Container(
                                width: 190.w,
                                padding: EdgeInsets.only(top: 13.h, left: 20.w),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20.r),
                                ),
                                child: CustomTextInputField(
                                    fillColor: Colors.white,
                                    fontSize: 18.sp,
                                    fontColor: Colors.black,
                                    fontWeight: FontWeight.w700,
                                    label: '',
                                    hintText: 'City',
                                    labelFontColor: Colors.black38,
                                    labelFontSize: 14.sp,
                                    labelFontWeight: FontWeight.w500,
                                    onChange: (value) {
                                      controller.searchUserByName(value);
                                    }),
                              ),
                            ],
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
                                        margin: EdgeInsets.only(
                                            left: 10.w, top: 3.h, bottom: 3.h),
                                        child: CustomTextField(
                                          text: e,
                                          fontSize: 12.sp,
                                          font: '',
                                          fontWeight: FontWeight.w400,
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
                        ],
                      ),
                    )
                  ],
                ),
                Container(
                  height: 150.h,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Transform.scale(
                            scaleX: 1.0,
                            scaleY: 1.1,
                            child: Checkbox(
                              activeColor: Colors.yellow,
                              checkColor: Colors.black,
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.zero,
                              ),
                              value: true,
                              onChanged: (value) {},
                            ),
                          ),
                          Container(
                            width: 328,
                            child: CustomTextField(
                                text:
                                    "I accept Terms & conditions and Privacy Policy",
                                font: 'Roboto',
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Transform.scale(
                            scaleX: 1.0,
                            scaleY: 1.1,
                            child: Checkbox(
                              activeColor: Colors.yellow,
                              checkColor: Colors.black,
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.zero,
                              ),
                              value: true,
                              onChanged: (value) {},
                            ),
                          ),
                          Container(
                            width: 328,
                            child: CustomTextField(
                                lines: 2,
                                text:
                                    "I accept Bank's Terms & Policies , Customer Account Agressment and Electronic Communication Consent",
                                font: 'Roboto',
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Transform.scale(
                            scaleX: 1.0,
                            scaleY: 1.1,
                            child: Checkbox(
                              activeColor: Colors.yellow,
                              checkColor: Colors.black,
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.zero,
                              ),
                              value: true,
                              onChanged: (value) {},
                            ),
                          ),
                          Container(
                            width: 328,
                            child: CustomTextField(
                                text:
                                    "I confirm that I understood Additional Required Disclosures(interest , minimum balance , service & features , opening fees, other Fees and contact/ support line)",
                                font: 'Roboto',
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircularButton(
                      text: "LOGIN",
                      onPressed: () => Get.toNamed(RoutePaths.loginScreen),
                      width: 220.w,
                      bottomLeft: Radius.circular(40.r),
                      bottomRight: Radius.circular(40.r),
                      topLeft: Radius.circular(40.r),
                      topRight: Radius.circular(40.r),
                    ),
                  ],
                )
              ],
            )),
      ),
    );
  }
}
