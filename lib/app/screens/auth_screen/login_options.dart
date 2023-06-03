import 'package:checkbox1/app/routes/route_paths.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../widgets/circular_button.dart';

class LoginOption extends StatelessWidget {
  const LoginOption({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.95),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Image(
            image: AssetImage("assets/signup.jpeg"),
            width: double.infinity,
            fit: BoxFit.fitWidth,
          ),
          SizedBox(
            height: 30.h,
          ),
          GestureDetector(
            child: CircularButton(
              text: "LOGIN",
              onPressed: () {
                Get.toNamed(RoutePaths.loginScreen);
              },
              height: 60,
              width: 200,
              bottomLeft: Radius.circular(40.r),
              bottomRight: Radius.circular(40.r),
              topLeft: Radius.circular(40.r),
              topRight: Radius.circular(40.r),
            ),
          ),
          SizedBox(
            height: 16.h,
          ),
          InkWell(
            onTap: () {
              Get.toNamed(RoutePaths.loginScreen);
            },
            child: const Text(
              "SIGN UP",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          RichText(
            text: TextSpan(
                text: "Already have an account? ",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                ),
                children: [
                  TextSpan(
                      text: "Login",
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => print('pressed1'),
                      style: const TextStyle(
                        color: Colors.amber,
                      )),
                ]),
          ),
        ],
      ),
    );
  }
}
