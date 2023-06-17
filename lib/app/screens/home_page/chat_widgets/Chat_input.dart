import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChatInput extends StatelessWidget {
  const ChatInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
      padding: EdgeInsets.symmetric( vertical: 5.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.r)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.add, color: Colors.amber),
              ),
              Expanded(
                child: TextField(
                  cursorColor: Colors.black,
                  minLines: 1,
                  // controller: controller.textController,
                  maxLines: 5,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17.sp
                  ),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Type your message',
                    hintStyle: TextStyle(
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.w400,
                      fontSize: 16.sp,
                    ),
                  ),
                ),
              ),
              IconButton(
                onPressed: () {
                  // controller.sendMessage();
                },
                icon: const Icon(
                  Icons.send,
                  color: Colors.amber,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
