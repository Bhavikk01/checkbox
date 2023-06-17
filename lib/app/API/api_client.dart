
import 'dart:developer';

import 'package:get/get.dart';

class ApiClient extends GetConnect implements GetxService {

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

}