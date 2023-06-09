
import 'package:checkbox1/app/services/firebase.dart';
import 'package:checkbox1/app/services/user.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../models/enums/payment_status.dart';
import '../../../models/enums/user_option.dart';
import '../../../models/payment_model/payment_model.dart';
import '../../../models/user_model/user_model.dart';
import '../../../routes/route_paths.dart';

class SendMoneyController extends GetxController {

  late SingingCharacter userOption;
  var isGhostPay = false.obs;
  var willPayFee = false.obs;
  late UserModel user;
  late PaymentModel paymentModel;
  final List<String> relationShip = [
    'Select relationship',
    'Friend',
    'Parents',
    'Relative',
    'Brother',
    'Manager'
  ];

  final List<String> purpose = [
    'Select purpose',
    'Education',
    'Poverty',
    'Urgency',
    'Health Care',
    'Manager'
  ];
  String initialRelation = 'Select relationship';
  String initialPurpose = 'Select purpose';
  Rx<String> recipientPay = '0.0'.obs;
  TextEditingController amount = TextEditingController();
  TextEditingController nameController = TextEditingController();

  Rx<double> totalAmount = 0.0.obs;

  var amountSend = '0.0'.obs;

  @override
  void onInit() {
    userOption = Get.arguments['userOption'];
    super.onInit();
  }

  sendPayment() async {
    if(isGhostPay.value){
      ///Have to call payment API directly
      Get.toNamed(RoutePaths.paymentSuccess, arguments: {'transaction': paymentModel});
    }else{
      try{
        var userData = await FirebaseFireStore.to.getUserByName(nameController.text);
        if(userData == null){
          Get.snackbar(
            'Username',
            "User doesn't exist with this name",
            borderRadius: 15,
            margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            snackPosition: SnackPosition.BOTTOM,
            colorText: Colors.white,
            backgroundColor: const Color(0xff041c50),
            icon: const Icon(Icons.person),
          );
        }else{
          user = UserModel.fromJson(userData.docs.first.data());
          paymentModel = PaymentModel(
            paymentId: '',
            sendFromUserId: UserStore.to.uid,
            currency: 'USD',
            amount: amount.text,
            dateOfPay: DateTime.now(),
            paymentDescription: initialPurpose,
            paymentFrom: 'From ${signingCharacterEnumMap[userOption]}',
            paymentStatus: PaymentStatus.stage1,
            sendToUserId: user.uid,
            sendToUserName: nameController.text,
          );
          await FirebaseFireStore.to.proceedPayment(paymentModel);
          Get.toNamed(RoutePaths.successNotification);
        }
      }catch(err){
        Get.toNamed(RoutePaths.paymentFailed, arguments: {'transaction': paymentModel});
      }
    }
  }

  countTotalAmount() {
    if(amount.text.isNotEmpty && double.parse(amount.text) >= 2){
      totalAmount.value = double.parse(amount.text) - 2;
      if(willPayFee.value){
        recipientPay.value = (double.parse(amount.text) - 2.0).toString();
      }else{
        recipientPay.value = double.parse(amount.text).toString();
      }
      
    }else{
      totalAmount.value = 0.0;
      recipientPay.value = '0.0';
    }
  }
}