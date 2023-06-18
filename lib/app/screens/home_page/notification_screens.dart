import 'package:checkbox1/app/models/enums/payment_status.dart';
import 'package:checkbox1/app/screens/home_page/getx_helper/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../../routes/route_paths.dart';
import '../../widgets/custom_text_field.dart';

class NotificationScreen extends GetView<HomePageController> {
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
      body: Obx(
        () => Container(
          margin: EdgeInsets.symmetric(vertical: 10.h, horizontal: 15.w),
          child: !controller.isNotificationsLoading.value ?
          SmartRefresher(
            controller: controller.refreshController,
            enablePullDown: true,
            enablePullUp: false,
            onRefresh: controller.onRefreshNotifications,
            child: ListView.builder(
                    itemCount: controller.notifications.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Get.toNamed(RoutePaths.paymentNotifierPage, arguments: {'paymentModel': controller.notifications[index]});
                        },
                        child: Container(
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
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        constraints: BoxConstraints(
                                          minWidth: 10.w,
                                          maxWidth: 150.w,
                                        ),
                                        child: CustomTextField(
                                          text: 'USD ${controller.notifications[index].amount}',
                                          font: '',
                                          fontSize: 18.sp,
                                          lines: 1,
                                          fontWeight: FontWeight.w700,
                                          textColor: Colors.black,
                                        ),
                                      ),
                                      SizedBox(height: 3.h),
                                      CustomTextField(
                                        text: controller.notifications[index].paymentFrom,
                                        font: '',
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
                                        text: paymentStatusEnumMap[controller.notifications[index].paymentStatus]!,
                                        font: '',
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
                                      text: '#${controller.notifications[index].paymentId}',
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
                        ),
                      );
                    },
                  ),
              )
              : Center(
                  child: CircularProgressIndicator(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
        ),
      ),
    );
  }
}
