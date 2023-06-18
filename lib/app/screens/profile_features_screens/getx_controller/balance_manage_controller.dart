
import 'package:checkbox1/app/services/firebase.dart';
import 'package:checkbox1/app/services/user.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/route_paths.dart';

class BalanceManageController extends GetxController {

  TextEditingController withdrawMoney = TextEditingController();
  TextEditingController addMoney = TextEditingController();

  Future<void> addBalance() async {
    await FirebaseFireStore.to.updateUserData(
      UserStore.to.profile.copyWith(
        balance: (UserStore.to.profile.balance + double.parse(addMoney.text))
      )
    );
    Get.back();
  }

  Future<void> withDrawBalance() async {
    if(double.parse(withdrawMoney.text) <= UserStore.to.profile.balance){
      await FirebaseFireStore.to.updateUserData(
          UserStore.to.profile.copyWith(
              balance: (UserStore.to.profile.balance - double.parse(withdrawMoney.text))
          )
      );
      Get.back();
    }else {
      Get.snackbar(
        'Auth',
        "You don't have that current balance to withdraw from your account",
        borderRadius: 15,
        icon: const Icon(Icons.wallet),
        backgroundColor: Colors.white,
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }

}