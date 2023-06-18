import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../models/user_model/user_model.dart';
import '../../../routes/route_paths.dart';
import '../../../services/firebase.dart';

class AuthController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();


  Future<void> handleLogin() async {
    try {
      // Response res = await ApiClient.to.login(emailController.text, passwordController.text);
      //
      // var data = res.body['data'];
      //
      // if (res.statusCode == 200) {
      //   log(data.toString());
      //   Get.offAllNamed(RoutePaths.homeScreen);
      // } else {
      //   Get.snackbar(
      //     'Auth',
      //     'Failed to login!!',
      //     borderRadius: 15,
      //     snackPosition: SnackPosition.BOTTOM,
      //     colorText: Colors.white,
      //     backgroundColor: const Color(0xff041c50),
      //     icon: const Icon(Icons.person),
      //     margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      //   );
      // }
      if(await FirebaseFireStore.to.handleEmailSignIn(emailController.text, passwordController.text)){
        Get.offAllNamed(RoutePaths.homeScreen);
      }else{

      }
    } catch (err) {
      Get.snackbar(
        'Auth',
        '$err',
        borderRadius: 15,
        margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        snackPosition: SnackPosition.BOTTOM,
        colorText: Colors.white,
        backgroundColor: const Color(0xff041c50),
        icon: const Icon(Icons.person),
      );
    }
  }

}
