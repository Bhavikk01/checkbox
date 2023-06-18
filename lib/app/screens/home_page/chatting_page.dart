import 'package:checkbox1/app/routes/route_paths.dart';
import 'package:checkbox1/app/screens/home_page/getx_helper/chat_room_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../widgets/custom_text_field.dart';

class ChattingPage extends GetView<ChatRoomController> {
  const ChattingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        centerTitle: true,
        title: CustomTextField(
          text: 'Chat',
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
          margin: EdgeInsets.symmetric(vertical: 5.h, horizontal: 10.w),
          child: Column(
            children: [
              ListTile(
                title: CustomTextField(
                  text: 'Recent conversations',
                  font: 'roboto',
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w700,
                  textColor: Colors.black87,
                ),
                trailing: Icon(
                  Icons.search,
                  size: 25.h,
                ),
              ),
              SizedBox(height: 5.h),
              !controller.isLoading.value ?
              Expanded(
                child: ListView.builder(
                  itemCount: controller.state.chatRoomList.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.symmetric(vertical: 5.h, horizontal: 10.w),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.r),
                      ),
                      child: ListTile(
                        onTap: () {
                          Get.toNamed(RoutePaths.chatSpaceScreen, arguments: {
                            "chatRoomId": controller.state.chatRoomList[index].chatRoomId,
                            "toUserProfile": controller.state.otherUser[index].photoId,
                            "toUserName": '${controller.state.otherUser[index].firstName} ${controller.state.otherUser[index].lastName}',
                            "toUserUid": controller.state.otherUser[index].uid,
                          });
                        },
                        leading: controller.state.otherUser[index].photoId != ''
                            ? CircleAvatar(
                          backgroundImage: NetworkImage(
                            controller.state.otherUser[index].photoId,
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
                        trailing: Container(
                          height: 15.h,
                          width: 15.w,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.amberAccent,
                          ),
                        ),
                        subtitle: CustomTextField(
                          text: controller.state.chatRoomList[index].lastMessage != ''
                              ? controller.state.chatRoomList[index].lastMessage
                              : 'No recent message',
                          fontWeight: FontWeight.w500,
                          fontSize: 10.sp,
                          font: '',
                          lines: 1,
                          textColor: Colors.black38,
                        ),
                        title: CustomTextField(
                          text: '${controller.state.otherUser[index].firstName} ${controller.state.otherUser[index].lastName}',
                          fontWeight: FontWeight.w700,
                          fontSize: 16.sp,
                          font: '',
                          textColor: Colors.black,
                        ),
                      ),
                    );
                  },
                ),
              )
                  : const Center(
                      child: CircularProgressIndicator(
                        color: Colors.blue,
                      ),
              ),
            ],
          ),
      ),
    );
  }
}
