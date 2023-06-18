import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../API/api_client.dart';
import '../../../models/user_model/user_model.dart';
import '../../../routes/route_paths.dart';
import '../../../services/firebase.dart';

class AuthController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController lNameController = TextEditingController();
  TextEditingController fNameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

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

  Future<void> handleSignUp() async {
    try {
      // Response res = await ApiClient.to.signUp(
      //     UserModel(
      //         uid: '',
      //         firstName: fNameController.text,
      //         lastName: lNameController.text,
      //         password: passwordController.text,
      //         photoId: '',
      //         email: emailController.text,
      //         phoneNumber: phoneController.text
      //     )
      // );
      //
      // var data = res.body['data'];
      //
      // if (res.statusCode == 200) {
      //   log(res.body.toString());
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

      if(await FirebaseFireStore.to.handleEmailSignUp(
          UserModel(
            uid: '',
            firstName: fNameController.text,
            lastName: lNameController.text,
            email: emailController.text,
            photoId: '',
            phoneNumber: phoneController.text,
            password: confirmPasswordController.text,
          )
      )){
        Get.offAllNamed(RoutePaths.homeScreen);
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

  bool validateField() {
    if(GetUtils.isEmail(emailController.text)){
      if(passwordController.text.length > 6){
        if(passwordController.text == confirmPasswordController.text){
          return true;
        }else{
          Get.snackbar(
            'Auth',
            'Password and Confirm password are not matching',
            borderRadius: 15,
            margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            snackPosition: SnackPosition.BOTTOM,
            backgroundColor: Colors.white,
            colorText: const Color(0xff041c50),
            icon: const Icon(Icons.person),
          );
          return false;
        }
      }else{
        Get.snackbar(
          'Auth',
          'Please enter a strong password',
          borderRadius: 15,
          margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.white,
          colorText: const Color(0xff041c50),
          icon: const Icon(Icons.person),
        );
        return false;
      }
    }else{
      Get.snackbar(
        'Auth',
        'Please enter a valid email address',
        borderRadius: 15,
        margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.white,
        colorText: const Color(0xff041c50),
        icon: const Icon(Icons.person),
      );
      return false;
    }
  }
}
