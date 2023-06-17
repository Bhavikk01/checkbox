import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../widgets/custom_text_field.dart';

class BankAccountPage extends StatelessWidget {
  const BankAccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
        child: ListView.builder(
          itemCount: 4,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.symmetric(vertical: 5.h),
              padding: EdgeInsets.symmetric(vertical: 13.h, horizontal: 30.w),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15.r),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomTextField(
                    text: 'Bank Name 2',
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                    font: '',
                    textColor: Colors.black,
                  ),
                  CustomTextField(
                    text: '5998-8989-4545-6598',
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w600,
                    font: '',
                    textColor: Colors.black26,
                  ),
                ],
              ),
            );
          },
        ),
      )
    );
  }
}
