import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../models/enums/user_option.dart';
import '../../widgets/circular_button.dart';
import '../../widgets/custom_text_field.dart';
import 'getx_helper/user_option_controller.dart';

class UserOptionPage extends GetView<UserOptionController> {
  const UserOptionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: CustomTextField(
          text: 'User Options',
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
          children: [
            Image.asset(
              'assets/signup.png',
              fit: BoxFit.cover,
            ),
            SizedBox(height: 100.h),
            GestureDetector(
              onTap: () {
                controller.character.value = SingingCharacter.BUYER;
              },
              child: Obx(
                () => Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.w),
                  margin:
                      EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.w),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15.r),
                    border: Border.all(
                      color:
                          controller.character.value == SingingCharacter.BUYER
                              ? Theme.of(context).colorScheme.primary
                              : Colors.white,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Radio<SingingCharacter>(
                        fillColor: MaterialStateColor.resolveWith(
                          (states) => Colors.black,
                        ),
                        value: SingingCharacter.BUYER,
                        groupValue: controller.character.value,
                        onChanged: (SingingCharacter? value) {
                          controller.character.value = value;
                        },
                      ),
                      const Icon(Icons.person),
                      SizedBox(
                        width: 20.w,
                      ),
                      CustomTextField(
                        text: "BUYER",
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        font: '',
                        textColor: Colors.black,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                controller.character.value = SingingCharacter.SELLER;
              },
              child: Obx(
                () => Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.w),
                  margin:
                      EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.w),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15.r),
                    border: Border.all(
                      color:
                          controller.character.value == SingingCharacter.SELLER
                              ? Theme.of(context).colorScheme.primary
                              : Colors.white,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Radio<SingingCharacter>(
                        fillColor: MaterialStateColor.resolveWith(
                          (states) => Colors.black,
                        ),
                        value: SingingCharacter.SELLER,
                        groupValue: controller.character.value,
                        onChanged: (SingingCharacter? value) {
                          controller.character.value = value;
                        },
                      ),
                      const Icon(Icons.person),
                      SizedBox(
                        width: 20.w,
                      ),
                      CustomTextField(
                        text: "SELLER",
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        font: '',
                        textColor: Colors.black,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.h),
            CircularButton(
              text: "CONTINUE",
              onPressed: () => log("Accept request"),
              width: 230.w,
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
