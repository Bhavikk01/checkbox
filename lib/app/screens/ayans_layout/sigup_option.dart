import 'dart:developer';

import 'package:checkbox1/app/routes/route_paths.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widgets/circular_button.dart';
import '../../widgets/custom_text_field.dart';
//import 'getx_helper/auth_controller.dart';

class SignUpOption extends GetView {
  const SignUpOption({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.95),
      body: Container(
        margin: EdgeInsets.only(top: 150.h, bottom: 40.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                const Image(
                  image: AssetImage("assets/signup.png"),
                  width: double.infinity,
                  fit: BoxFit.fitWidth,
                ),
                Container(
                  margin: EdgeInsets.only(right: 60.w, left: 60.w, top: 20.h),
                  child: Column(
                    children: [
                      CustomTextField(
                        text: 'Select your desired account',
                        font: '',
                        fontSize: 17.sp,
                        textAlign: TextAlign.center,
                        fontWeight: FontWeight.w400,
                        textColor: const Color(0xff151729),
                      ),
                      CustomTextField(
                        lines: 1,
                        text: 'type below.',
                        font: '',
                        fontSize: 17.sp,
                        textAlign: TextAlign.center,
                        fontWeight: FontWeight.w400,
                        textColor: const Color(0xff151729),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(RoutePaths.registrationpage);
                      },
                      child: Container(
                        height: 135.h,
                        width: 150.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.r),
                        ),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Positioned(
                              bottom: 0,
                              child: Container(
                                width: 150.w,
                                padding: EdgeInsets.only(
                                  top: 30.h,
                                  bottom: 30.h,
                                  left: 20.w,
                                  right: 20.w,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15.r),
                                ),
                                child: Column(
                                  children: [
                                    CustomTextField(
                                      text: 'Individual',
                                      font: 'roboto',
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w700,
                                      textColor: Colors.black,
                                    ),
                                    SizedBox(height: 10.h),
                                    CustomTextField(
                                      text:
                                          'Send and receive money, easily pay invoices to businesses',
                                      font: 'roboto',
                                      fontSize: 9.sp,
                                      textAlign: TextAlign.center,
                                      fontWeight: FontWeight.w500,
                                      textColor: Colors.black.withOpacity(0.4),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              top: 0,
                              child: Container(
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
                                  Icons.person_sharp,
                                  size: 28.sp,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10.h,
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(RoutePaths.businessregistrationpage);
                      },
                      child: Container(
                        height: 135.h,
                        width: 150.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.r),
                        ),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Positioned(
                              bottom: 0,
                              child: Container(
                                width: 150.w,
                                padding: EdgeInsets.only(
                                  top: 30.h,
                                  bottom: 30.h,
                                  left: 20.w,
                                  right: 20.w,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15.r),
                                ),
                                child: Column(
                                  children: [
                                    CustomTextField(
                                      text: 'Business',
                                      font: 'roboto',
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w700,
                                      textColor: Colors.black,
                                    ),
                                    SizedBox(height: 10.h),
                                    CustomTextField(
                                      text:
                                          "Add CA\$HBOX payment options to your business. Moving money made easy ",
                                      font: 'roboto',
                                      fontSize: 9.sp,
                                      textAlign: TextAlign.center,
                                      fontWeight: FontWeight.w500,
                                      textColor: Colors.black.withOpacity(0.4),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              top: 0,
                              child: Container(
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
                                  Icons.storefront,
                                  size: 28.sp,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                RichText(
                  text: TextSpan(
                    text: "Already have an account? ",
                    style: GoogleFonts.roboto(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                    children: [
                      TextSpan(
                        text: "Login",
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => Get.toNamed(RoutePaths.loginScreen),
                        style: GoogleFonts.roboto(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.amber,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
