import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../API/api_client.dart';
import '../../../routes/route_paths.dart';
import '../../../services/firebase.dart';

class AuthController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  var isVisible = false.obs;


  Future<void> handleLogin() async {
    try {
      await ApiClient.to.login(emailController.text, passwordController.text);
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
