import 'dart:developer';

import 'package:checkbox1/app/models/payment_model/payment_model.dart';
import 'package:checkbox1/app/screens/home_page/dashboard_page.dart';
import 'package:checkbox1/app/screens/home_page/notification_screens.dart';
import 'package:checkbox1/app/screens/home_page/profile_page.dart';
import 'package:checkbox1/app/services/firebase.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import '../chatting_page.dart';
import '../payment_history_page.dart';

class HomePageController extends GetxController {
  RxList<PaymentModel> notifications = <PaymentModel>[].obs;
  RxList<PaymentModel> transactionHistory = <PaymentModel>[].obs;
  var isNotificationsLoading = false.obs;
  var isTransactionLoading = false.obs;
  RefreshController refreshController = RefreshController();
  RefreshController refreshController2 = RefreshController();
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
    await readUserNotifications();
    await readTransactions();
    super.onInit();
  }

  onRefreshNotifications() {
    readUserNotifications().then(
      (_) => refreshController.refreshCompleted(resetFooterState: true),
    );
  }

  onRefreshTransaction() {
    readTransactions().then(
      (_) => refreshController2.refreshCompleted(resetFooterState: true),
    );
  }

  Future<void> readUserNotifications() async {
    isNotificationsLoading.value = true;
    log('Getting data');
    notifications.clear();

    var notificationData = await FirebaseFireStore.to.getNotifications();
    log(notificationData.docs.toString());

    for (var notification in notificationData.docs) {
      notifications.add(PaymentModel.fromJson(notification.data()));
    }
    isNotificationsLoading.value = false;
    log('Got Data');
  }

  Future<void> readTransactions() async {
    isTransactionLoading.value = true;
    transactionHistory.clear();
    var transactionToData = await FirebaseFireStore.to.getToTransactions();
    var transactionFromData = await FirebaseFireStore.to.getFromTransactions();
    for (var transaction in transactionToData.docs) {
      transactionHistory.add(PaymentModel.fromJson(transaction.data()));
    }
    for (var transaction in transactionFromData.docs) {
      transactionHistory.add(PaymentModel.fromJson(transaction.data()));
    }
    isTransactionLoading.value = false;
  }
}
