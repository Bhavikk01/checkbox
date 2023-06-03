import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widgets/circular_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff020b21),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Image(
              image: AssetImage(
                "assets/loginPM.jpeg",
              ),
              width: double.infinity,
              fit: BoxFit.fitWidth,
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(top: 20.h, left: 20.w),
              child: Text(
                'LOGIN',
                style: TextStyle(
                  fontSize: 25.sp,
                  color: Colors.white
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 40.w, vertical: 20.h),
              child: TextFormField(
                keyboardType: TextInputType.number,
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                ),
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                ),
              ),
            ),
            CircularButton(
              text: "LOGIN",
              height: 60.h,
              onPressed: () {},
              width: 200.w,

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
