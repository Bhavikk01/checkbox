import 'package:checkbox1/app/screens/home_page/chat_widgets/chat_left_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'chat_right_item.dart';

class ChatList extends StatelessWidget {
  const ChatList({Key? key}) : super(key: key);

  final String prevUserUid = '';

  @override
  Widget build(BuildContext context) {
    return Container(
          padding: EdgeInsets.only( bottom: 15.h),
          child: ListView.builder(
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            reverse: true,
            itemCount: 2,
            itemBuilder: (context, index){
              // var item = controller.state.chatData[index];
              // final isSameUser = prevUserUid == item.sendBy;
              // prevUserUid = item.sendBy;
              // if(controller.state.toUserUid.value == item.sendBy){
                return chatLeftItem('item', context);
              // }
              // return chatLeftItem('item');
            },
          ),
      );
  }
}
