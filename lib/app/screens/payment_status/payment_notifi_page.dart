import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widgets/circular_button.dart';
import '../../widgets/custom_text_field.dart';

class PaymentNotifierPage extends StatelessWidget {
  const PaymentNotifierPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: CustomTextField(
          text: 'Payment Requests',
          fontWeight: FontWeight.w500,
          fontSize: 18.sp,
          font: '',
          textColor: Colors.white,
        ),
        centerTitle: true,
        actions: [
          Icon(
            Icons.close,
            color: Colors.white,
            size: 25.h,
          ),
          SizedBox(
            width: 20.w,
          )
        ],
      ),
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 30.h, horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(
                'assets/lock.png',
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 20.h),
            CustomTextField(
              text: 'TRANSACTION HAS BEEN CREATED. ',
              fontWeight: FontWeight.w600,
              fontSize: 16.sp,
              font: '',
              textColor: Colors.black45,
            ),
            CustomTextField(
              text: 'YOUR MONEY IS IN THE CA\$HBOX ',
              fontWeight: FontWeight.w600,
              fontSize: 12.sp,
              font: '',
              textColor: Colors.black45,
            ),
            SizedBox(height: 20.h),
            CircularButton(
              text: "ACCEPT PAYMENT",
              onPressed: () {
                ///Have to send again the notification.
                log("Accept request");
              },
              width: 230.w,
              bottomLeft: Radius.circular(40.r),
              bottomRight: Radius.circular(40.r),
              topLeft: Radius.circular(40.r),
              topRight: Radius.circular(40.r),
            ),
            SizedBox(height: 15.h),
            InkWell(
              onTap: () {
                log("Reject request");
              },
              child: CustomTextField(
                text: "REJECT PAYMENT",
                fontWeight: FontWeight.bold,
                fontSize: 16.sp,
                font: '',
              ),
            ),
          ],
        )
      ),
    );
  }
}
