import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../routes/route_paths.dart';
import '../../widgets/circular_button.dart';
import '../../widgets/custom_text_field.dart';
import '../../widgets/custom_text_input_field.dart';

class WithdrawFundsPage extends StatelessWidget {
  WithdrawFundsPage({Key? key}) : super(key: key);



  final List<String> relationShip = [
    'Select relationship',
    'Friend',
    'Parents',
    'Relative',
    'Brother',
    'Manager'
  ];

  final String initialRelation = 'Select relationship';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: CustomTextField(
          text: 'Withdraw',
          fontWeight: FontWeight.w600,
          fontSize: 18.sp,
          font: '',
          textColor: Colors.white,
        ),
        centerTitle: true,
        actions: [
          Icon(
            Icons.more_vert,
            color: Colors.white,
            size: 25.h,
          ),
          SizedBox(
            width: 20.w,
          )
        ],
      ),
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 12.h),
              child: DropdownButtonFormField(
                value: initialRelation,
                isDense: true,
                items: relationShip
                    .map((e) => DropdownMenuItem(
                  value: e,
                  child: Container(
                    margin: EdgeInsets.only(left: 10.w, top: 3.h, bottom: 3.h),
                    child: CustomTextField(
                      text: e,
                      fontSize: 12.sp,
                      font: '',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                ).toList(),
                borderRadius: BorderRadius.circular(20.r),
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  isDense: true,
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.r),
                    borderSide: BorderSide.none,
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.r),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.r),
                    borderSide: BorderSide.none,
                  ),
                  border: InputBorder.none,
                ),
                elevation: 0,
                style: GoogleFonts.roboto(
                  fontSize: 15.sp,
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                ),
                onChanged: (value) {
                  // initialRelation = value!;
                },
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 10.h, left: 20.w),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.r),
              ),
              child: CustomTextInputField(
                fillColor: Colors.white,
                fontSize: 18.sp,
                fontColor: Colors.black,
                fontWeight: FontWeight.w700,
                label: 'Amount',
                hintText: 'Enter your amount',
                labelFontColor: Colors.black38,
                labelFontSize: 14.sp,
                labelFontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 30.h),
            CircularButton(
              text: "WITHDRAW",
              onPressed: () {
                Get.offAllNamed(RoutePaths.homeScreen);
              },
              width: 240.w,
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
