import 'dart:developer';

import 'package:checkbox1/app/models/payment_model/payment_model.dart';
import 'package:checkbox1/app/screens/home_page/dashboard_page.dart';
import 'package:checkbox1/app/screens/home_page/notification_screens.dart';
import 'package:checkbox1/app/screens/home_page/profile_page.dart';
import 'package:checkbox1/app/services/firebase.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../chatting_page.dart';
import '../payment_history_page.dart';

class HomePageController extends GetxController {

  RxList<PaymentModel> notifications = <PaymentModel>[].obs;
  RxList<PaymentModel> transactionHistory = <PaymentModel>[].obs;
  var isLoading = false.obs;
  Rx<int> index = 2.obs;
  List<Widget> screens = [
    const TransactionHistoryPage(),
    const ChattingPage(),
    const DashboardPage(),
    const NotificationScreen(),
    const ProfilePage(),
  ];

  @override
  Future<void> onInit() async {
    await readUserData();
    super.onInit();
  }

  Future<void> readUserData() async {
    isLoading.value = true;
    log('Getting data');
    notifications.clear();
    transactionHistory.clear();
    var transactionData = await FirebaseFireStore.to.getAllTransaction();
    var notificationData = await FirebaseFireStore.to.getNotifications();
    log(notificationData.docs.toString());

    for(var notification in notificationData.docs){
      notifications.add(PaymentModel.fromJson(notification.data()));
    }
    for(var transaction in transactionData.docs){
      transactionHistory.add(PaymentModel.fromJson(transaction.data()));
    }
    isLoading.value = false;
    log('Got Data');
  }

}