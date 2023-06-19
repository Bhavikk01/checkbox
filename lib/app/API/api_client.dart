import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/user_model/user_model.dart';
import '../routes/route_paths.dart';
import '../services/firebase.dart';
import '../services/user.dart';

class ApiClient extends GetConnect implements GetxService {
  String requestUrl = 'http://cashbox.sparkscodes.com/api/v1/';
  String _token = '';

  static ApiClient get to => Get.find();

  set token(String value) {
    _token = value;
  }

  Future<Response> getData(String uri) async {
    try {
      var response = await get(uri);
      return response;
    } catch (e) {
      return Response(statusCode: 1, statusText: e.toString());
    }
  }

  Future<Response> postData(String uri, Map<String, dynamic>? body) async {
    try {
      Response response = await post(uri, body);
      return response;
    } catch (e) {
      log(e.toString());
      return Response(statusCode: 1, statusText: e.toString());
    }
  }

  Future<void> signUp(UserModel user) async {
    Response res = await post(
      '${requestUrl}register_after_verification',
      {
        'first_name': user.firstName,
        'last_name': user.lastName,
        'email': user.cashboxAccount.cashboxEmail,
        'password': user.cashboxAccount.cashboxPassword,
        'phone_no': user.cashboxAccount.cashboxPhoneNumber,
        'username': '${user.firstName} ${user.lastName}',
        'code': 322332
      },
      headers: {
        'content-type': 'application/json',
      },
    );
    var data = res.body['data'];
    if (res.body['success']) {
      log(res.body.toString());
      token = data['token'];
      UserCredential userCredential = await FirebaseFireStore.to.auth.createUserWithEmailAndPassword(
          email: user.cashboxAccount.cashboxEmail,
          password: user.cashboxAccount.cashboxPassword);
      await FirebaseFireStore.to.fireStore
          .collection("Users")
          .doc(userCredential.user!.uid)
          .set(user.copyWith(uid: userCredential.user!.uid).toJson());
      UserStore.to.saveProfile(userCredential.user!.uid);
      FirebaseFireStore.to.logout();
      Get.offAndToNamed(RoutePaths.loginScreen);
    } else {
      log(res.body.toString());
      Get.snackbar(
        'Auth',
        res.body['data'].toString(),
        borderRadius: 15,
        snackPosition: SnackPosition.BOTTOM,
        colorText: Colors.white,
        backgroundColor: const Color(0xff041c50),
        icon: const Icon(Icons.person),
        margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      );
    }
  }

  Future<void> login(String email, String password) async {
    Response res = await post(
      '${requestUrl}login',
      {'email': email, 'password': password},
      headers: {
        'content-type': 'application/json',
      },
    );
    var data = res.body['data'];
    if (res.body['success']) {
      ApiClient.to.token = data['token'];
      log(data.toString());
      if(await FirebaseFireStore.to.handleEmailSignIn(email, password, data['user_id'])){
        log('fbb');
        Get.offAllNamed(RoutePaths.homeScreen);
      }
    } else {
      Get.snackbar(
        'Auth',
        data['status'],
        borderRadius: 15,
        snackPosition: SnackPosition.BOTTOM,
        colorText: Colors.white,
        backgroundColor: const Color(0xff041c50),
        icon: const Icon(Icons.person),
        margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      );
    }
  }

  Future<Response> sendMoney(String receiverId, String senderId, String method,
      String type, String amount, String status) async {
    Response res = await post(
      '${requestUrl}sendMoney',
      {
        'sender_id': senderId,
        'receiver_id': receiverId,
        'method': method,
        'type': type,
        'amount': double.parse(amount),
        'status': status,
      },
      headers: {
        'Content-Type': 'application/json',
      },
    );
    return res;
  }

  Future<Response> requestMoney(
      String senderId, String receiverId, String amount) async {
    Response res = await post(
      '${requestUrl}requestMoney',
      {
        'sender_id': senderId,
        'receiver_id': receiverId,
        'amount': double.parse(amount),
      },
      headers: {
        'Content-Type': 'application/json',
      },
    );
    return res;
  }

  Future<Response> searchByUserName(String name) async {
    try {
      Response res = await post(
        '${requestUrl}searchUsername',
        {
          'search_query': name,
        },
        headers: {
          'Content-Type': 'application/json',
        },
      );
      return res;
    } catch (err) {
      log(err.toString());
      return Response(statusCode: 200, statusText: err.toString());
    }
  }

  Future<void> addDebitCard() async {}

  Future<Response> getUserAllTransaction() async {
    try {
      Response res = await post(
        '${requestUrl}getUserAllTransaction',
        {
          'user_id': 'id',
        },
        headers: {
          'Content-Type': 'application/json',
        },
      );
      return res;
    } catch (err) {
      log(err.toString());
      return Response(statusCode: 200, statusText: err.toString());
    }
  }

  Future<Response> getUserDataByUID() async {
    try {
      Response res = await post(
        '${requestUrl}getUserData',
        {
          'user_id': 'id',
        },
        headers: {
          'Content-Type': 'application/json',
        },
      );
      return res;
    } catch (err) {
      log(err.toString());
      return Response(statusCode: 200, statusText: err.toString());
    }
  }
}
