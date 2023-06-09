import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../routes/route_paths.dart';
import '../../../widgets/circular_button.dart';
import '../../../widgets/custom_text_field.dart';
import '../../../widgets/custom_text_input_field.dart';
import '../getx_helper/sign_up_controller.dart';

class SignUpIndividualScreen extends GetView<SignUpController> {
  const SignUpIndividualScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme
          .of(context)
          .colorScheme
          .primaryContainer,
      appBar: AppBar(
        backgroundColor: Theme
            .of(context)
            .colorScheme
            .primary,
        title: CustomTextField(
          text: 'Registration',
          fontWeight: FontWeight.w500,
          fontSize: 18.sp,
          font: '',
          textColor: Colors.white,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
            margin: EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomTextField(
                  text: "Basic Info",
                  font: '',
                  fontSize: 17.sp,
                  fontWeight: FontWeight.w700,
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10.h),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 5.h),
                        padding: EdgeInsets.only(top: 13.h, left: 20.w),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                        child: CustomTextInputField(
                          controller: controller.fNameController,
                          fillColor: Colors.white,
                          fontSize: 15.sp,
                          fontColor: Colors.black,
                          fontWeight: FontWeight.w600,
                          label: 'First Name',
                          hintText: 'Enter the first name',
                          labelFontColor: Colors.black38,
                          labelFontSize: 14.sp,
                          labelFontWeight: FontWeight.w500,
                          onChange: (value) {},
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 5.h),
                        padding: EdgeInsets.only(top: 13.h, left: 20.w),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                        child: CustomTextInputField(
                          fillColor: Colors.white,
                          controller: controller.lNameController,
                          fontSize: 15.sp,
                          fontColor: Colors.black,
                          fontWeight: FontWeight.w600,
                          label: 'Last Name',
                          hintText: 'Enter the last name',
                          labelFontColor: Colors.black38,
                          labelFontSize: 14.sp,
                          labelFontWeight: FontWeight.w500,
                          onChange: (value) {},
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 5.h),
                        padding: EdgeInsets.only(top: 13.h, left: 20.w),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                        child: CustomTextInputField(
                          fillColor: Colors.white,
                          controller: controller.dobController,
                          fontSize: 15.sp,
                          fontColor: Colors.black,
                          fontWeight: FontWeight.w600,
                          label: 'DOB',
                          hintText: 'Enter Date of Birth',
                          labelFontColor: Colors.black38,
                          labelFontSize: 14.sp,
                          labelFontWeight: FontWeight.w500,
                          onChange: (value) {},
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 5.h),
                        padding: EdgeInsets.only(top: 13.h, left: 20.w),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                        child: CustomTextInputField(
                          controller: controller.socialSecurityController,
                          fillColor: Colors.white,
                          fontSize: 15.sp,
                          fontColor: Colors.black,
                          fontWeight: FontWeight.w600,
                          label: 'SSN',
                          hintText: 'Social security number (SSN)',
                          labelFontColor: Colors.black38,
                          labelFontSize: 14.sp,
                          labelFontWeight: FontWeight.w500,
                          onChange: (value) {},
                        ),
                      ),
                    ],
                  ),
                ),
                CustomTextField(
                  text: "CA\$HBOX Account",
                  font: 'roboto',
                  fontSize: 17.sp,
                  fontWeight: FontWeight.w700,
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10.h),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 5.h),
                        padding: EdgeInsets.only(top: 13.h, left: 20.w),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                        child: CustomTextInputField(
                          fillColor: Colors.white,
                          controller: controller.phoneController,
                          fontSize: 15.sp,
                          fontColor: Colors.black,
                          fontWeight: FontWeight.w600,
                          label: 'Phone Number',
                          hintText: 'Enter your phone number',
                          labelFontColor: Colors.black38,
                          labelFontSize: 14.sp,
                          labelFontWeight: FontWeight.w500,
                          onChange: (value) {},
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 5.h),
                        padding: EdgeInsets.only(top: 13.h, left: 20.w),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                        child: CustomTextInputField(
                          fillColor: Colors.white,
                          controller: controller.emailController,
                          fontSize: 15.sp,
                          fontColor: Colors.black,
                          fontWeight: FontWeight.w600,
                          label: 'Email',
                          hintText: 'Enter your E-mail address',
                          labelFontColor: Colors.black38,
                          labelFontSize: 14.sp,
                          labelFontWeight: FontWeight.w500,
                          onChange: (value) {},
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 5.h),
                        padding: EdgeInsets.only(top: 13.h, left: 20.w),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                        child: CustomTextInputField(
                          controller: controller.passwordController,
                          fillColor: Colors.white,
                          fontSize: 15.sp,
                          fontColor: Colors.black,
                          fontWeight: FontWeight.w600,
                          label: 'Password',
                          hintText: 'Enter your password',
                          labelFontColor: Colors.black38,
                          labelFontSize: 14.sp,
                          labelFontWeight: FontWeight.w500,
                          onChange: (value) {},
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 5.h),
                        padding: EdgeInsets.only(top: 13.h, left: 20.w),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                        child: CustomTextInputField(
                          fillColor: Colors.white,
                          controller: controller.confirmPasswordController,
                          fontSize: 15.sp,
                          fontColor: Colors.black,
                          fontWeight: FontWeight.w600,
                          label: 'Confirm Password',
                          hintText: 'Enter password again',
                          labelFontColor: Colors.black38,
                          labelFontSize: 14.sp,
                          labelFontWeight: FontWeight.w500,
                          onChange: (value) {},
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  //mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomTextField(
                      text: "Address",
                      font: 'roboto',
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w700,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10.h),
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 5.h),
                            padding: EdgeInsets.only(top: 13.h, left: 20.w),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20.r),
                            ),
                            child: CustomTextInputField(
                              fillColor: Colors.white,
                              controller: controller.addressController,
                              fontSize: 15.sp,
                              fontColor: Colors.black,
                              fontWeight: FontWeight.w600,
                              label: 'Address',
                              hintText: 'Street and number',
                              labelFontColor: Colors.black38,
                              labelFontSize: 14.sp,
                              labelFontWeight: FontWeight.w500,
                              onChange: (value) {},
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                width: 120.w,
                                margin: EdgeInsets.symmetric(vertical: 5.h),
                                padding: EdgeInsets.only(top: 13.h, left: 20.w),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20.r),
                                ),
                                child: CustomTextInputField(
                                  controller: controller.userZipController,
                                  fillColor: Colors.white,
                                  fontSize: 15.sp,
                                  fontColor: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  label: 'ZIP',
                                  hintText: 'ZIP Code',
                                  labelFontColor: Colors.black38,
                                  labelFontSize: 14.sp,
                                  labelFontWeight: FontWeight.w500,
                                  onChange: (value) {},
                                ),
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Container(
                                width: 190.w,
                                padding: EdgeInsets.only(top: 13.h, left: 20.w),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20.r),
                                ),
                                child: CustomTextInputField(
                                  controller: controller.userCityController,
                                  fillColor: Colors.white,
                                  fontSize: 15.sp,
                                  fontColor: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  label: 'City',
                                  hintText: 'City',
                                  labelFontColor: Colors.black38,
                                  labelFontSize: 14.sp,
                                  labelFontWeight: FontWeight.w500,
                                  onChange: (value) {},
                                ),
                              ),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 12.h),
                            child: DropdownButtonFormField(
                              value: controller.selectedState,
                              isDense: true,
                              items: controller.state
                                  .map(
                                    (e) =>
                                    DropdownMenuItem(
                                      value: e,
                                      child: Container(
                                        margin: EdgeInsets.only(
                                          left: 10.w,
                                          top: 3.h,
                                          bottom: 3.h,
                                        ),
                                        child: CustomTextField(
                                          text: e,
                                          fontSize: 12.sp,
                                          font: '',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                              )
                                  .toList(),
                              borderRadius: BorderRadius.circular(20.r),
                              decoration: InputDecoration(
                                fillColor: Colors.white,
                                isDense: true,
                                filled: true,
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20.r),
                                  borderSide: BorderSide.none,
                                ),
                                disabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20.r),
                                  borderSide: BorderSide.none,
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20.r),
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
                                controller.selectedState = value!;
                              },
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Obx(
                          () =>
                          Transform.scale(
                            scaleX: 1.0,
                            scaleY: 1.1,
                            child: Checkbox(
                              activeColor: Colors.yellow,
                              checkColor: Colors.black,
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.zero,
                              ),
                              value: controller.checkbox1.value,
                              onChanged: (value) {
                                controller.toggleCheckBox1();
                              },
                            ),
                          ),
                    ),
                    SizedBox(
                      width: 270.w,
                      child: CustomTextField(
                        text: "I accept Terms & conditions and Privacy Policy",
                        font: 'Roboto',
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Obx(
                          () =>
                          Transform.scale(
                            scaleX: 1.0,
                            scaleY: 1.1,
                            child: Checkbox(
                              activeColor: Colors.yellow,
                              checkColor: Colors.black,
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.zero,
                              ),
                              value: controller.checkbox2.value,
                              onChanged: (value) {
                                controller.toggleCheckBox2();
                              },
                            ),
                          ),
                    ),
                    SizedBox(
                      width: 270.w,
                      child: CustomTextField(
                        lines: 2,
                        text:
                        "I accept Bank's Terms & Policies , Customer Account Agressment and Electronic Communication Consent",
                        font: 'Roboto',
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Obx(
                          () =>
                          Transform.scale(
                            scaleX: 1.0,
                            scaleY: 1.1,
                            child: Checkbox(
                              activeColor: Colors.yellow,
                              checkColor: Colors.black,
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.zero,
                              ),
                              value: controller.checkbox3.value,
                              onChanged: (value) {
                                controller.toggleCheckBox3();
                              },
                            ),
                          ),
                    ),
                    SizedBox(
                      width: 270.w,
                      child: CustomTextField(
                        text:
                        "I confirm that I understood Additional Required Disclosures(interest , minimum balance , service & features , opening fees, other Fees and contact/ support line)",
                        font: 'Roboto',
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30.h),
                Center(
                  child: CircularButton(
                    text: "LOGIN",
                    onPressed: () async {
                      if(controller.validateField()){
                        await controller.handleSignUp();
                      }
                    },
                    width: 220.w,
                    bottomLeft: Radius.circular(40.r),
                    bottomRight: Radius.circular(40.r),
                    topLeft: Radius.circular(40.r),
                    topRight: Radius.circular(40.r),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
