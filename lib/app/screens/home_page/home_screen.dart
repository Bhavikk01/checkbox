import 'package:checkbox1/app/screens/home_page/getx_helper/home_controller.dart';
import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';


class HomePage extends GetView<HomePageController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      body: Obx(
        () => controller.screens[controller.index.value],
      ),
      bottomNavigationBar: Container(
        color: Colors.transparent,
        margin: EdgeInsets.symmetric(vertical: 12.h, horizontal: 20.w),
        child: Obx(
          ()=> CustomNavigationBar(
            isFloating: true,
            backgroundColor: Colors.white,
            elevation: 0,
            borderRadius: Radius.circular(30.r),
            items: [
              CustomNavigationBarItem(
                icon: const Icon(Icons.wallet),
              ),
              CustomNavigationBarItem(
                icon: const Icon(Icons.chat),
              ),
              CustomNavigationBarItem(
                icon: const Icon(Icons.home_outlined),
              ),
              CustomNavigationBarItem(
                icon: const Icon(Icons.add_alert),
              ),
              CustomNavigationBarItem(
                icon: const Icon(Icons.person),
              ),
            ],
            selectedColor: Colors.amber,
            unSelectedColor: Theme.of(context).colorScheme.secondary,
            currentIndex: controller.index.value,
            onTap: (index) {
              controller.index.value = index;
            },
            strokeColor: Colors.black,
          ),
        ),
      ),
    );
  }
}
