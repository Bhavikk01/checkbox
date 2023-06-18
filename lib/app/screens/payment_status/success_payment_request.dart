import 'package:checkbox1/app/routes/route_paths.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../widgets/custom_text_field.dart';

class SuccessNotification extends StatefulWidget {
  const SuccessNotification({Key? key}) : super(key: key);

  @override
  State<SuccessNotification> createState() => _SuccessNotificationState();
}

class _SuccessNotificationState extends State<SuccessNotification> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 3),
      () => Get.offAllNamed(RoutePaths.homeScreen),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: CustomTextField(
          text: 'Payment Status',
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
        margin: EdgeInsets.symmetric(vertical: 30.h, horizontal: 5.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Container(
                height: 140.h,
                width: 140.w,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xff34da39),
                ),
                child: Icon(
                  Icons.check_circle,
                  color: Colors.white,
                  size: 100.h,
                ),
              ),
            ),
            SizedBox(height: 20.h),
            CustomTextField(
              text: 'Payment request has been generated and sent successfully to the user',
              fontWeight: FontWeight.w500,
              textAlign: TextAlign.center,
              fontSize: 18.sp,
              font: '',
              textColor: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
