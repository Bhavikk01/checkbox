import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../routes/route_paths.dart';
import '../../widgets/custom_text_field.dart';
import 'chat_widgets/Chat_input.dart';
import 'chat_widgets/chat_list.dart';

class ChatSpace extends StatelessWidget {
  const ChatSpace({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      appBar: AppBar(
        centerTitle: true,
        title: ListTile(
          onTap: (){
            Get.toNamed(RoutePaths.homeScreen);
          },
          title: SizedBox(
            width: 200.w,
            child: CustomTextField(
              text: 'Bhavik Kothari',
              fontSize: 14.sp,
              fontWeight: FontWeight.w700,
              lines: 1,
              font: '',
              textColor: Colors.white,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 15.w),
            child: GestureDetector(
              onTap: () {},
              child: const Icon(Icons.more_vert),
            ),
          ),
        ],
      ),
      body: const Column(
        children: [
          Expanded(
            child: ChatList(),
          ),
          ChatInput()
        ],
      ),
    );
  }
}
