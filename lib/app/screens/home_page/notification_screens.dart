
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widgets/custom_text_field.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: CustomTextField(
          text: 'Payment Notifications',
          fontWeight: FontWeight.w500,
          fontSize: 18.sp,
          font: '',
          textColor: Colors.white,
        ),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.only(top: 30.h),
        child: Column(
          children: [

          ],
        )
      ),
    );
  }
}
