import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ticket/flutter_ticket.dart';
import 'package:get/get.dart';

import '../../routes/route_paths.dart';
import '../../widgets/custom_text_field.dart';
import 'getx_helper/payment_status_controller.dart';

class PaymentSuccessPage extends GetView<PaymentStatusController> {
  const PaymentSuccessPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        automaticallyImplyLeading: false,
        title: CustomTextField(
          text: 'Payment Status',
          fontWeight: FontWeight.w500,
          fontSize: 18.sp,
          font: '',
          textColor: Colors.white,
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(
              Icons.close,
              color: Colors.white,
              size: 25.h,
            ),
            onPressed: () {
              Get.offAllNamed(RoutePaths.homeScreen);
            },
          )
        ],
      ),
      body: Container(
        margin: EdgeInsets.only(top: 30.h),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 30.h, right: 40.w, left: 40.w),
                  child: Ticket(
                    dashedBottom: true,
                    innerRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20.r),
                      bottomRight: Radius.circular(20.r),
                    ),
                    outerRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.r),
                      topRight: Radius.circular(20.r),
                    ),
                    child: Container(
                      color: Colors.white,
                      padding: EdgeInsets.symmetric(
                        horizontal: 15.w,
                        vertical: 20.h,
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 30.h),
                          CustomTextField(
                            text: 'Payment Success',
                            fontWeight: FontWeight.w500,
                            fontSize: 18.sp,
                            font: '',
                            textColor: Colors.black,
                          ),
                          SizedBox(height: 5.h),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.w),
                            child: CustomTextField(
                              text: 'Received Payment',
                              fontWeight: FontWeight.w500,
                              fontSize: 12.sp,
                              font: '',
                              textColor: Colors.black54,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              top: 30.h,
                              bottom: 10.h,
                            ),
                            padding: EdgeInsets.symmetric(
                              vertical: 10.h,
                              horizontal: 10.h,
                            ),
                            decoration: BoxDecoration(
                              color: Theme.of(context)
                                  .colorScheme
                                  .primaryContainer,
                              borderRadius: BorderRadius.circular(15.r),
                            ),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  radius: 20.r,
                                  backgroundColor: Colors.white,
                                  child: Icon(
                                    Icons.person_2_outlined,
                                    color: Colors.black,
                                    size: 20.h,
                                  ),
                                ),
                                SizedBox(width: 10.w),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      constraints: BoxConstraints(
                                        minWidth: 10.w,
                                        maxWidth: 140.w,
                                      ),
                                      child: CustomTextField(
                                        text:
                                            controller.paymentModel.paymentFrom,
                                        fontWeight: FontWeight.w700,
                                        lines: 1,
                                        fontSize: 13.sp,
                                        font: '',
                                        textColor: Colors.black,
                                      ),
                                    ),
                                    Container(
                                      constraints: BoxConstraints(
                                        minWidth: 10.w,
                                        maxWidth: 140.w,
                                      ),
                                      child: CustomTextField(
                                        text:
                                            'ID: ${controller.paymentModel.paymentId}',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12.sp,
                                        lines: 1,
                                        font: '',
                                        textColor: Colors.black54,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 40.w),
                  child: Ticket(
                    dashedBottom: true,
                    outerRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20.r),
                      bottomRight: Radius.circular(20.r),
                    ),
                    innerRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.r),
                      topRight: Radius.circular(20.r),
                    ),
                    child: Container(
                      color: Colors.white,
                      child: Column(
                        children: [
                          Divider(
                            color: Colors.black38,
                            height: 2.h,
                            indent: 0,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 40.w,
                              vertical: 20.h,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomTextField(
                                      text: 'Date',
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12.sp,
                                      lines: 1,
                                      font: '',
                                      textColor: Colors.black38,
                                    ),
                                    Container(
                                      constraints: BoxConstraints(
                                        minWidth: 10.w,
                                        maxWidth: 100.w,
                                      ),
                                      child: CustomTextField(
                                        text:
                                            '${controller.paymentModel.dateOfPay.day}/${controller.paymentModel.dateOfPay.month}/${controller.paymentModel.dateOfPay.year}',
                                        fontWeight: FontWeight.w700,
                                        fontSize: 13.sp,
                                        lines: 1,
                                        font: '',
                                        textColor: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomTextField(
                                      text: 'Time',
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12.sp,
                                      lines: 1,
                                      font: '',
                                      textColor: Colors.black38,
                                    ),
                                    CustomTextField(
                                      text:
                                          '${controller.paymentModel.dateOfPay.hour}:${controller.paymentModel.dateOfPay.minute}:${controller.paymentModel.dateOfPay.second}',
                                      fontWeight: FontWeight.w700,
                                      fontSize: 13.sp,
                                      lines: 1,
                                      font: '',
                                      textColor: Colors.black,
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          Container(
                            color: Theme.of(context).colorScheme.secondary,
                            padding: EdgeInsets.symmetric(
                              horizontal: 40.w,
                              vertical: 20.h,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  constraints: BoxConstraints(
                                    minWidth: 10.w,
                                    maxWidth: 100.w,
                                  ),
                                  child: CustomTextField(
                                    text: 'Amount',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14.sp,
                                    lines: 1,
                                    font: '',
                                    textColor: Colors.white,
                                  ),
                                ),
                                Container(
                                  constraints: BoxConstraints(
                                    minWidth: 10.w,
                                    maxWidth: 120.w,
                                  ),
                                  child: CustomTextField(
                                    text:
                                        'USD: ${controller.paymentModel.amount}',
                                    fontWeight: FontWeight.w700,
                                    fontSize: 15.sp,
                                    lines: 1,
                                    font: '',
                                    textColor: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              top: 0,
              child: Container(
                height: 60.h,
                width: 60.w,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xff34da39),
                ),
                child: Icon(
                  Icons.check_circle,
                  color: Colors.white,
                  size: 34.h,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
