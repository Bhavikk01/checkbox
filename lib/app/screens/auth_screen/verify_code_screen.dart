
import 'package:checkbox1/app/screens/auth_screen/getx_helper/auth_controller.dart';
import 'package:checkbox1/app/screens/auth_screen/getx_helper/sign_up_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../routes/route_paths.dart';
import '../../widgets/circular_button.dart';
import '../../widgets/custom_text_field.dart';

class VerifyCodePage extends GetView<SignUpController> {
  const VerifyCodePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: CustomTextField(
          text: 'Verify  Phone Number',
          fontWeight: FontWeight.w500,
          fontSize: 18.sp,
          font: '',
          textColor: Colors.white,
        ),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 30.h, horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: CustomTextField(
                text: 'Enter verification code received via SMS:',
                fontWeight: FontWeight.w600,
                fontSize: 14.sp,
                font: '',
                textColor: Colors.black,
              ),
            ),
            SizedBox(height: 20.h),
            Center(
              child: PinCodeTextField(
                autoDisposeControllers: false,
                autoFocus: true,
                length: 5,
                obscureText: false,
                animationType: AnimationType.none,
                cursorColor: Colors.black,
                enableActiveFill: true,
                pinTheme: PinTheme(
                  fieldOuterPadding:
                  EdgeInsets.symmetric(horizontal: 10.w),
                  activeFillColor: Colors.white,
                  inactiveFillColor: Colors.white,
                  inactiveColor: Theme.of(context).colorScheme.primary,
                  disabledColor: Theme.of(context).colorScheme.primary,
                  activeColor: Theme.of(context).colorScheme.primary,
                  selectedColor: Theme.of(context).colorScheme.primary,
                  shape: PinCodeFieldShape.box,
                  selectedFillColor: Colors.white,
                  borderRadius: BorderRadius.circular(6.r),
                  borderWidth: 2.w,
                  fieldHeight: 40.h,
                  fieldWidth: 40.w,
                ),
                textStyle:
                TextStyle(fontSize: 16.sp, color: Colors.black),
                animationDuration: const Duration(milliseconds: 300),
                onCompleted: (value) {},
                onChanged: (value) {},
                beforeTextPaste: (text) {
                  return true;
                },
                appContext: context,
                controller: controller.otpController,
              ),
            ),
            SizedBox(height: 20.h),
            CircularButton(
              text: "CONTINUE",
              onPressed: () => Get.toNamed(RoutePaths.accountCreated),
              width: 220.w,
              bottomLeft: Radius.circular(40.r),
              bottomRight: Radius.circular(40.r),
              topLeft: Radius.circular(40.r),
              topRight: Radius.circular(40.r),
            ),
          ],
        ),
      ),
    );
  }
}
