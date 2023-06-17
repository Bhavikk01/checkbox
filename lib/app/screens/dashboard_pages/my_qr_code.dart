import 'package:checkbox1/app/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyQrCode extends StatelessWidget {
  const MyQrCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: CustomTextField(
          text: 'My QR code',
          fontWeight: FontWeight.w500,
          fontSize: 20.sp,
          font: '',
          textColor: Colors.white,
        ),
        centerTitle: true,
        actions: [
          Icon(
            Icons.more_vert,
            color: Colors.white,
            size: 25.h,
          )
        ],
      ),
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 40.h, horizontal: 45.w),
        child: Column(
          children: [
            Container(
              height: 230.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.r),
                border: Border.all(
                  color: Colors.amber,
                  width: 2.w
                )
              ),
            ),
            SizedBox(
              height: 40.h,
            ),
            CustomTextField(
              text: 'Lorem Ipusum dolor Sit met Consecteuer adipiscing Lorem Ipusum dolor sit met Consecteuer adipiscing',
              fontWeight: FontWeight.w400,
              fontSize: 12.sp,
              font: '',
              textAlign: TextAlign.center,
              textColor: Colors.black54,
            ),
          ],
        ),
      ),
    );
  }
}
