import 'package:checkbox1/app/screens/home_page/getx_helper/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

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
                  child: !controller.isLoading.value
                      ? ListView.builder(
                          itemCount: 10,
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
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
