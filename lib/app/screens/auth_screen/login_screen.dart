import 'package:checkbox1/app/routes/route_paths.dart';
import 'package:checkbox1/app/screens/auth_screen/getx_helper/auth_controller.dart';
import 'package:checkbox1/app/widgets/custom_text_field.dart';
import 'package:checkbox1/app/widgets/custom_text_input_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../widgets/circular_button.dart';

class LoginScreen extends GetView<AuthController> {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Image(
              image: AssetImage(
                "assets/loginPM.jpeg",
              ),
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 25.w, bottom: 25.h,),
              child: Text(
                'LOGIN',
                style: TextStyle(fontSize: 18.sp, color: Colors.white),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 25.w, bottom: 10.h, right: 25.w),
              padding: EdgeInsets.only(top: 10.h, left: 10.w),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary,
                borderRadius: BorderRadius.circular(15.r),
              ),
              child: CustomTextInputField(
                fillColor: Theme.of(context).colorScheme.secondary,
                controller: controller.emailController,
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
                label: 'Email',
                hintText: 'Enter your email',
                labelFontColor: Colors.white54,
                labelFontSize: 13.sp,
                labelFontWeight: FontWeight.w600,
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 25.w, bottom: 35.h, right: 25.w),
              padding: EdgeInsets.only(top: 10.h, left: 10.w),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary,
                borderRadius: BorderRadius.circular(15.r),
              ),
              child: CustomTextInputField(
                fillColor: Theme.of(context).colorScheme.secondary,
                controller: controller.passwordController,
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
            CircularButton(
              text: "LOGIN",
              onPressed: () async {
                await controller.handleLogin();
              },
              width: 220.w,
              bottomLeft: Radius.circular(40.r),
              bottomRight: Radius.circular(40.r),
              topLeft: Radius.circular(40.r),
              topRight: Radius.circular(40.r),
            ),
            SizedBox(height: 12.h),
            CustomTextField(
              text: 'Forgot password?',
              font: '',
              fontSize: 13.sp,
              fontWeight: FontWeight.w600,
              textColor: Colors.amberAccent.withOpacity(0.6),
            ),
          ],
        ),
      ),
    );
  }
}
