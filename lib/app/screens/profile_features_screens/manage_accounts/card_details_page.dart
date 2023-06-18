import 'package:checkbox1/app/screens/profile_features_screens/manage_accounts/getx_helper/manage_account_controller.dart';
import 'package:checkbox1/app/widgets/circular_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../widgets/custom_text_field.dart';
import '../../../widgets/custom_text_input_field.dart';

class CardDetailsPage extends GetView<ManageAccountController> {
  const CardDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: CustomTextField(
          text: 'Card details',
          fontWeight: FontWeight.w500,
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
        margin: EdgeInsets.symmetric( horizontal: 20.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 16.h, right: 10.w, left: 20.w, bottom: 5.h),
                margin: EdgeInsets.only(top: 25.h),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: CustomTextInputField(
                  fillColor: Colors.white,
                  controller: controller.bankName,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w700,
                  fontColor: Colors.black,
                  label: 'Bank name',
                  hintText: 'Bank Name',
                  labelFontColor: Colors.black45,
                  labelFontSize: 15.sp,
                  labelFontWeight: FontWeight.w700,
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 12.h),
                padding: EdgeInsets.only(top: 15.h, bottom: 5.h, left: 20.w),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: CustomTextInputField(
                        fillColor: Colors.white,
                        controller: controller.cardNumber,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w700,
                        fontColor: Colors.black,
                        label: 'Card',
                        hintText: 'Card Number',
                        labelFontColor: Colors.black45,
                        labelFontSize: 15.sp,
                        labelFontWeight: FontWeight.w700,
                      ),
                    ),
                    Image.asset(
                      'assets/master_card.png',
                    ),
                    SizedBox(
                      width: 20.w,
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 16.h, right: 10.w, left: 20.w, bottom: 5.h),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: CustomTextInputField(
                  fillColor: Colors.white,
                  fontSize: 18.sp,
                  controller: controller.cardHolderName,
                  fontWeight: FontWeight.w700,
                  fontColor: Colors.black,
                  label: 'Name on card',
                  hintText: 'Card holder Name',
                  labelFontColor: Colors.black45,
                  labelFontSize: 15.sp,
                  labelFontWeight: FontWeight.w700,
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 12.h),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.only(top: 15.h, bottom: 5.h, left: 15.w),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                        child: CustomTextInputField(
                          fillColor: Colors.white,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w700,
                          controller: controller.cardExpiry,
                          fontColor: Colors.black,
                          label: 'Valid Through',
                          hintText: 'Expiry',
                          labelFontColor: Colors.black45,
                          labelFontSize: 15.sp,
                          labelFontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.only(top: 15.h, bottom: 5.h, left: 15.w),
                        margin: EdgeInsets.only(left: 10.w),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                        child: CustomTextInputField(
                          fillColor: Colors.white,
                          fontSize: 18.sp,
                          controller: controller.cardCvv,
                          fontWeight: FontWeight.w700,
                          fontColor: Colors.black,
                          label: 'CVV',
                          hintText: 'Cvv',
                          labelFontColor: Colors.black45,
                          labelFontSize: 15.sp,
                          labelFontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                  margin: EdgeInsets.only(top: 10.h, bottom: 40.h),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  child: ListTile(
                    onTap: () {
                      controller.isDefault.value = !controller.isDefault.value;
                    },
                    leading: Container(
                      height: 50.h,
                      width: 50.w,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.amber,
                          width: 2.w,
                        ),
                      ),
                      child: Icon(
                        Icons.wallet,
                        size: 28.sp,
                      ),
                    ),
                    trailing: Obx(
                      () => CupertinoSwitch(
                        value: controller.isDefault.value,
                        activeColor: Colors.amber,
                        thumbColor: Colors.white,
                        trackColor: Colors.black26,
                        onChanged: (val) {}
                      ),
                    ),
                    subtitle: CustomTextField(
                      text: 'Moving Money Anonymously iub',
                      fontWeight: FontWeight.w500,
                      fontSize: 10.sp,
                      font: '',
                      lines: 1,
                      textColor: Colors.black38,
                    ),
                    title: CustomTextField(
                      text: 'Set card as default',
                      fontWeight: FontWeight.w700,
                      fontSize: 14.sp,
                      font: '',
                      textColor: Colors.black,
                    ),
                  )
              ),
              CircularButton(
                onPressed: () {
                  controller.saveCardDetails();
                },
                text: 'SAVE CARD',
                bottomLeft: Radius.circular(20.r),
                bottomRight: Radius.circular(20.r),
                topLeft: Radius.circular(20.r),
                topRight: Radius.circular(20.r),
                width: 220.w,
              )
            ],
          ),
        ),
      ),
    );
  }
}
