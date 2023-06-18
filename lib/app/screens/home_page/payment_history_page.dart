import 'package:checkbox1/app/models/enums/payment_status.dart';
import 'package:checkbox1/app/screens/home_page/getx_helper/home_controller.dart';
import 'package:checkbox1/app/services/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../../widgets/custom_text_field.dart';

class TransactionHistoryPage extends GetView<HomePageController> {
  const TransactionHistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        centerTitle: true,
        title: CustomTextField(
          text: 'Transactions',
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
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
        child: Column(
          children: [
            ListTile(
              title: CustomTextField(
                text: 'All transactions',
                font: 'roboto',
                fontSize: 20.sp,
                fontWeight: FontWeight.w700,
                textColor: Colors.black,
              ),
              trailing: Icon(
                Icons.filter_list_alt,
                size: 25.h,
              ),
            ),
            SizedBox(height: 5.h),
            Expanded(
              child: Obx(
                () => MediaQuery.removePadding(
                  context: context,
                  removeTop: true,
                  child: !controller.isTransactionLoading.value ?
                  SmartRefresher(
                    controller: controller.refreshController2,
                    enablePullDown: true,
                    enablePullUp: false,
                    onRefresh: controller.onRefreshTransaction,
                    child: ListView.builder(
                            itemCount: controller.transactionHistory.length,
                            shrinkWrap: true,
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
                                          controller.transactionHistory[index].sendFromUserId == UserStore.to.uid
                                            ? Icons.arrow_upward_rounded
                                            : Icons.arrow_downward_rounded,
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
                                                text: 'USD ${controller.transactionHistory[index].amount}',
                                                font: 'roboto',
                                                fontSize: 18.sp,
                                                lines: 1,
                                                fontWeight: FontWeight.w700,
                                                textColor: Colors.black,
                                              ),
                                            ),
                                            SizedBox(height: 3.h),
                                            CustomTextField(
                                              text: controller.transactionHistory[index].paymentFrom,
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
                                              text: paymentStatusEnumMap[controller.transactionHistory[index].paymentStatus]!,
                                              font: '',
                                              fontSize: 11.sp,
                                              fontWeight: FontWeight.w500,
                                              textColor: paymentStatusEnumMap[controller.transactionHistory[index].paymentStatus]! == 'success'
                                                  ? Colors.lightGreen
                                                  : Colors.redAccent,
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
                                            text: '#${controller.transactionHistory[index].paymentId}',
                                            font: '',
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
                          ),
                      )
                      : Center(
                          child: CircularProgressIndicator(
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
