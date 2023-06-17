import 'package:checkbox1/app/screens/home_page/dashboard_page.dart';
import 'package:checkbox1/app/screens/home_page/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../payment_status/payment_failed_page.dart';
import '../chatting_page.dart';
import '../payment_history_page.dart';

class HomePageController extends GetxController {


  List<Widget> screens = [
    const TransactionHistoryPage(),
    ChattingPage(),
    const DashboardPage(),
    const PaymentFailedPage(),
    const ProfilePage(),
  ];

  Rx<int> index = 2.obs;
}