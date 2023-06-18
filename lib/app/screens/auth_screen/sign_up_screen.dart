import 'package:checkbox1/app/routes/route_paths.dart';
import 'package:checkbox1/app/widgets/custom_text_input_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../widgets/circular_button.dart';
import 'getx_helper/auth_controller.dart';

class SignUpScreen extends GetView<AuthController> {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image(
              image: const AssetImage(
                "assets/loginPM.jpeg",
              ),
              width: double.infinity,
              height: 150.h,
              fit: BoxFit.contain,
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 25.w, bottom: 25.h,),
              child: Text(
                'Sign Up',
                style: TextStyle(fontSize: 18.sp, color: Colors.white),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 25.w, bottom: 20.h, right: 25.w),
              padding: EdgeInsets.only(top: 10.h, left: 10.w),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary,
                borderRadius: BorderRadius.circular(15.r),
              ),
              child: CustomTextInputField(
                controller: controller.fNameController,
                fillColor: Theme.of(context).colorScheme.secondary,
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
                label: 'First Name',
                hintText: 'Enter your First name',
                labelFontColor: Colors.white54,
                labelFontSize: 13.sp,
                labelFontWeight: FontWeight.w600,
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 25.w, bottom: 20.h, right: 25.w),
              padding: EdgeInsets.only(top: 10.h, left: 10.w),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary,
                borderRadius: BorderRadius.circular(15.r),
              ),
              child: CustomTextInputField(
                controller: controller.lNameController,
                fillColor: Theme.of(context).colorScheme.secondary,
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
                label: 'Last Name',
                hintText: 'Enter your last name',
                labelFontColor: Colors.white54,
                labelFontSize: 13.sp,
                labelFontWeight: FontWeight.w600,
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 25.w, bottom: 20.h, right: 25.w),
              padding: EdgeInsets.only(top: 10.h, left: 10.w),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary,
                borderRadius: BorderRadius.circular(15.r),
              ),
              child: CustomTextInputField(
                controller: controller.emailController,
                fillColor: Theme.of(context).colorScheme.secondary,
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
                label: 'Enter your Email',
                hintText: 'Enter your email',
                labelFontColor: Colors.white54,
                labelFontSize: 13.sp,
                labelFontWeight: FontWeight.w600,
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 25.w, bottom: 20.h, right: 25.w),
              padding: EdgeInsets.only(top: 10.h, left: 10.w),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary,
                borderRadius: BorderRadius.circular(15.r),
              ),
              child: CustomTextInputField(
                controller: controller.phoneController,
                fillColor: Theme.of(context).colorScheme.secondary,
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
                label: 'Phone Number',
                hintText: 'Enter your number',
                labelFontColor: Colors.white54,
                labelFontSize: 13.sp,
                labelFontWeight: FontWeight.w600,
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 25.w, bottom: 20.h, right: 25.w),
              padding: EdgeInsets.only(top: 10.h, left: 10.w),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary,
                borderRadius: BorderRadius.circular(15.r),
              ),
              child: CustomTextInputField(
                controller: controller.passwordController,
                fillColor: Theme.of(context).colorScheme.secondary,
                obscureText: true,
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
                label: 'Password',
                hintText: 'Enter your password',
                labelFontColor: Colors.white54,
                labelFontSize: 13.sp,
                labelFontWeight: FontWeight.w600,
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 25.w, bottom: 20.h, right: 25.w),
              padding: EdgeInsets.only(top: 10.h, left: 10.w),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary,
                borderRadius: BorderRadius.circular(15.r),
              ),
              child: CustomTextInputField(
                controller: controller.confirmPasswordController,
                fillColor: Theme.of(context).colorScheme.secondary,
                obscureText: true,
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
                label: 'Confirm Password',
                hintText: 'Enter Confirm password',
                labelFontColor: Colors.white54,
                labelFontSize: 13.sp,
                labelFontWeight: FontWeight.w600,
              ),
            ),
            CircularButton(
              text: "Sign Up",
              onPressed: () async {
                if(controller.validateField()) {
                  await controller.handleSignUp();
                }
              },
              width: 220.w,
              bottomLeft: Radius.circular(40.r),
              bottomRight: Radius.circular(40.r),
              topLeft: Radius.circular(40.r),
              topRight: Radius.circular(40.r),
            ),
            SizedBox(height: 12.h),
          ],
        ),
      ),
    );
  }
}
