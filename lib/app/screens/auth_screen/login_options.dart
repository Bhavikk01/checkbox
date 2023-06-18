import 'dart:developer';

import 'package:checkbox1/app/routes/route_paths.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widgets/circular_button.dart';
import '../../widgets/custom_text_field.dart';
import 'getx_helper/auth_controller.dart';

class LoginOption extends GetView<AuthController> {
  const LoginOption({super.key});

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
                  margin: EdgeInsets.only(right: 60.w, left: 60.w),
                  child: CustomTextField(
                    text: 'CASHBOX brings insight, security, and protection to your money',
                    font: '',
                    fontSize: 18.sp,
                    textAlign: TextAlign.center,
                    fontWeight: FontWeight.w600,
                    textColor: const Color(0xff151729),
                  ),
                ),
              ],
            ),
            Column(
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
                SizedBox(
                  height: 16.h,
                ),
                InkWell(
                  onTap: () {
                    Get.toNamed(RoutePaths.signUpOptionScreen);
                  },
                  child: CustomTextField(
                    text: "SIGN UP",
                    fontWeight: FontWeight.bold,
                    fontSize: 16.sp,
                    font: '',
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
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
