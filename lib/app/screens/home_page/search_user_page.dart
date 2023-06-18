import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../widgets/custom_text_field.dart';
import '../../widgets/custom_text_input_field.dart';
import 'getx_helper/search_user_controller.dart';

class SearchUserPage extends GetView<SearchUserController> {
  const SearchUserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: CustomTextField(
          text: 'Search User',
          fontWeight: FontWeight.w500,
          fontSize: 18.sp,
          font: '',
          textColor: Colors.white,
        ),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 30.h, horizontal: 20.w),
        child: Obx(
          () => Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 13.h, left: 20.w),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: CustomTextInputField(
                  fillColor: Colors.white,
                  fontSize: 18.sp,
                  fontColor: Colors.black,
                  fontWeight: FontWeight.w700,
                  label: 'Username',
                  hintText: 'Enter username',
                  labelFontColor: Colors.black38,
                  labelFontSize: 14.sp,
                  labelFontWeight: FontWeight.w500,
                  onChange : (value){
                    controller.searchUserByName(value);
                  }
                ),
              ),
              !controller.isSearching.value ?
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(top: 20.h),
                  child: ListView.builder(
                    itemCount: controller.searchedUsers.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index){
                      return Container(
                        margin: EdgeInsets.symmetric(vertical: 5.h, horizontal: 10.w),
                        padding: EdgeInsets.symmetric(vertical: 5.h),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                        child: ListTile(
                          onTap: () {

                          },
                          leading: controller.searchedUsers[index].photoId != ''
                              ? CircleAvatar(
                            backgroundImage: NetworkImage(
                              controller.searchedUsers[index].photoId,
                            ),
                            radius: 45.r,
                          ) : Container(
                            height: 45.h,
                            width: 45.w,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.black12,
                            ),
                            child: Icon(
                              Icons.person_2_outlined,
                              size: 28.sp,
                            ),
                          ),
                          title: CustomTextField(
                            text: '${controller.searchedUsers[index].firstName} ${controller.searchedUsers[index].lastName}',
                            fontWeight: FontWeight.w700,
                            fontSize: 16.sp,
                            font: '',
                            textColor: Colors.black,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ) : Center(
                  child: CircularProgressIndicator(
                    color: Theme.of(context).colorScheme.primaryContainer,
                  ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
