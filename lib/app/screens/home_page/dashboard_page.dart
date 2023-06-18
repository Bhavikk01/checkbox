import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../routes/route_paths.dart';
import '../../widgets/custom_text_field.dart';
import 'getx_helper/home_controller.dart';

class DashboardPage extends GetView<HomePageController> {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        centerTitle: true,
        title: CustomTextField(
          text: 'Dashboard',
          fontWeight: FontWeight.w500,
          fontSize: 20.sp,
          font: '',
          textColor: Colors.white,
        ),
        actions: [
          Icon(
            Icons.more_vert,
            color: Colors.white,
            size: 25.h,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20.w),
          child: Obx(
            () => Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 15.h),
                  padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 13.h),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.secondary,
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/wallet.png',
                        fit: BoxFit.cover,
                        height: 45.h,
                      ),
                      SizedBox(width: 10.w),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomTextField(
                            text: 'USD 123,550.00',
                            font: 'roboto',
                            fontSize: 23.sp,
                            fontWeight: FontWeight.w700,
                            textColor: Colors.white,
                          ),
                          SizedBox(height: 3.h),
                          CustomTextField(
                            text: 'Balance',
                            font: 'roboto',
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w500,
                            textColor: Colors.white70,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Wrap(
                  spacing: 15.w,
                  runSpacing: 15.h,
                  alignment: WrapAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(RoutePaths.userOptionPage);
                      },
                      child: Container(
                        height: 135.h,
                        width: 150.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.r),
                        ),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Positioned(
                              bottom: 0,
                              child: Container(
                                width: 150.w,
                                padding: EdgeInsets.only(
                                  top: 30.h,
                                  bottom: 30.h,
                                  left: 20.w,
                                  right: 20.w,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15.r),
                                ),
                                child: Column(
                                  children: [
                                    CustomTextField(
                                      text: 'Send Money',
                                      font: 'roboto',
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w700,
                                      textColor: Colors.black,
                                    ),
                                    SizedBox(height: 10.h),
                                    CustomTextField(
                                      text:
                                          'Scan the QR code to pay your bills and  sdkh gsf huje hgeusv ',
                                      font: 'roboto',
                                      fontSize: 9.sp,
                                      textAlign: TextAlign.center,
                                      fontWeight: FontWeight.w500,
                                      textColor: Colors.black.withOpacity(0.4),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              top: 0,
                              child: Container(
                                height: 45.h,
                                width: 45.w,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Colors.amber,
                                    width: 2.w,
                                  ),
                                ),
                                child: Icon(
                                  Icons.people_outline_sharp,
                                  size: 28.sp,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 135.h,
                      width: 150.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.r),
                      ),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Positioned(
                            bottom: 0,
                            child: Container(
                              width: 150.w,
                              padding: EdgeInsets.only(
                                top: 30.h,
                                bottom: 30.h,
                                left: 20.w,
                                right: 20.w,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15.r),
                              ),
                              child: Column(
                                children: [
                                  CustomTextField(
                                    text: 'Pay',
                                    font: 'roboto',
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.w700,
                                    textColor: Colors.black,
                                  ),
                                  SizedBox(height: 10.h),
                                  CustomTextField(
                                    text:
                                        'Scan the QR code to pay your bills and  sdkh gsf huje hgeusv ',
                                    font: 'roboto',
                                    fontSize: 9.sp,
                                    textAlign: TextAlign.center,
                                    fontWeight: FontWeight.w500,
                                    textColor: Colors.black.withOpacity(0.4),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            top: 0,
                            child: Container(
                              height: 45.h,
                              width: 45.w,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                                border: Border.all(
                                  color: Colors.amber,
                                  width: 2.w,
                                ),
                              ),
                              child: Icon(
                                Icons.home_outlined,
                                size: 28.sp,
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 15.h),
                  alignment: Alignment.topLeft,
                  child: CustomTextField(
                    text: 'Latest transactions',
                    font: 'roboto',
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w700,
                    textColor: Colors.black,
                  ),
                ),
                !controller.isLoading.value
                    ? ListView.builder(
                        itemCount: controller.transactionHistory.length > 2 ? 2: controller.transactionHistory.length,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.symmetric(vertical: 4.h),
                            padding: EdgeInsets.symmetric(
                              horizontal: 20.w,
                              vertical: 12.h,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20.r),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.arrow_downward_rounded,
                                      size: 30.sp,
                                    ),
                                    SizedBox(width: 10.w),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          constraints: BoxConstraints(
                                            minWidth: 10.w,
                                            maxWidth: 150.w,
                                          ),
                                          child: CustomTextField(
                                            text: 'USD 1,239,898.00',
                                            font: 'roboto',
                                            fontSize: 18.sp,
                                            lines: 1,
                                            fontWeight: FontWeight.w700,
                                            textColor: Colors.black,
                                          ),
                                        ),
                                        SizedBox(height: 3.h),
                                        CustomTextField(
                                          text: 'Name of the store',
                                          font: 'roboto',
                                          fontSize: 11.sp,
                                          fontWeight: FontWeight.w500,
                                          textColor: Colors.black38,
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Row(
                                      children: [
                                        CustomTextField(
                                          text: 'Failed',
                                          font: 'roboto',
                                          fontSize: 11.sp,
                                          fontWeight: FontWeight.w500,
                                          textColor: Colors.redAccent,
                                        ),
                                        SizedBox(width: 10.w),
                                        const Icon(Icons.people_outline_sharp)
                                      ],
                                    ),
                                    SizedBox(
                                      height: 3.h,
                                    ),
                                    Container(
                                      constraints: BoxConstraints(
                                        minWidth: 10.w,
                                        maxWidth: 100.w,
                                      ),
                                      child: CustomTextField(
                                        text: '#268464998',
                                        font: 'roboto',
                                        fontSize: 11.sp,
                                        lines: 1,
                                        fontWeight: FontWeight.w500,
                                        textColor: Colors.black38,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          );
                        },
                      )
                    : Center(
                        child: CircularProgressIndicator(
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
