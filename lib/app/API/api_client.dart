
import 'dart:developer';

import 'package:get/get.dart';

import '../models/user_model/user_model.dart';
import '../services/firebase.dart';
import '../services/user.dart';

class ApiClient extends GetConnect implements GetxService {
  String requestUrl = 'http://cashbox.sparkscodes.com/api/v1/';
  String token = '';
  static ApiClient get to => Get.find();


  Future<Response> getData(String uri) async{
    try{
      var response = await get(uri);
      return response;
    }catch(e){
      return Response(statusCode: 1,statusText: e.toString());
    }
  }

  Future<Response> postData(String uri, Map<String, dynamic>? body) async {
    try{
      Response response = await post(uri, body);
      return response;
    } catch(e) {
      log(e.toString());
      return Response(statusCode: 1,statusText: e.toString());
    }
  }


  Future<Response> signUp(UserModel user) async {
    Response res = await post(
      '${requestUrl}register',
      {
        'first_name': user.firstName,
        'last_name': user.lastName,
        'email': user.cashboxAccount.cashboxEmail,
        'password': user.cashboxAccount.cashboxPassword,
        'phone_no': user.cashboxAccount.cashboxPhoneNumber,
        'username': '${user.firstName} ${user.lastName}'
      },
      headers: {
        'Content-Type': 'application/json',
      },
    );

    var docId = FirebaseFireStore.to.fireStore.collection('Users').doc().id;
    await FirebaseFireStore.to.fireStore
        .collection("Users")
        .doc(docId)
        .set(user.copyWith(uid: docId).toJson());
    UserStore.to.saveProfile(docId);
    return res;
  }

  Future<Response> login(String email, String password) async {
    Response res = await post('${requestUrl}login', {
      'email': email,
      'password': password
    }, headers: {
      'Accept': 'application/json',
      'Authorization': 'Bearer \'Bearer \'.\$accessToken'
    });
    return res;
  }

  Future<Response> sendMoney(String receiverId, String senderId, String method, String type, String amount, String status) async {
    Response res = await post(
      '${requestUrl}sendMoney?token=$token',
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

  Future<Response> requestMoney(String senderId, String receiverId, String amount) async {
    Response res = await post(
      '${requestUrl}requestMoney?token=$token',
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
    try{
      Response res = await post(
        '${requestUrl}searchUsername?token=$token',
        {
          'search_query': name,
        },
        headers: {
          'Content-Type': 'application/json',
        },
      );
      return res;
    }catch(err){
      log(err.toString());
      return Response(
          statusCode: 200,
          statusText: err.toString()
      );
    }
  }

  Future<void> addDebitCard() async {

  }

  Future<Response> getUserAllTransaction() async {
    try{
      Response res = await post(
        '${requestUrl}getUserAllTransaction?token=$token',
        {
          'user_id': 'id',
        },
        headers: {
          'Content-Type': 'application/json',
        },
      );
      return res;
    }catch(err){
      log(err.toString());
      return Response(
          statusCode: 200,
          statusText: err.toString()
      );
    }
  }

  Future<Response> getUserDataByUID() async {
    try{
      Response res = await post(
        '${requestUrl}getUserData?token=$token',
        {
          'user_id': 'id',
        },
        headers: {
          'Content-Type': 'application/json',
        },
      );
      return res;
    }catch(err){
      log(err.toString());
      return Response(
          statusCode: 200,
          statusText: err.toString()
      );
    }
  }
}