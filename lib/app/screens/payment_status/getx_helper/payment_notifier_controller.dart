import 'package:checkbox1/app/models/enums/payment_status.dart';
import 'package:checkbox1/app/services/user.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../models/payment_model/payment_model.dart';
import '../../../routes/route_paths.dart';
import '../../../services/firebase.dart';

class PaymentNotifierController extends GetxController {
  late PaymentModel paymentModel;

  @override
  void onInit() {
    paymentModel = Get.arguments['paymentModel'];
    super.onInit();
  }

  onAccept() async {
    if (paymentModel.paymentStatus == PaymentStatus.stage1) {
      try {
        await FirebaseFireStore.to.updatePaymentStatus(
          paymentModel.copyWith(
            paymentStatus: PaymentStatus.stage2,
            sendToUserId: paymentModel.sendFromUserId,
            sendFromUserId: UserStore.to.uid,
          ),
        );
        Get.offAndToNamed(RoutePaths.successNotification);
      } catch (err) {
        Get.snackbar(
          'Error',
          "$err",
          borderRadius: 15,
          margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
          snackPosition: SnackPosition.BOTTOM,
          colorText: Colors.white,
          backgroundColor: const Color(0xff041c50),
          icon: const Icon(Icons.person),
        );
      }
    } else if (paymentModel.paymentStatus == PaymentStatus.stage2) {
      try {
        await FirebaseFireStore.to.finalPayment(
          paymentModel.copyWith(
            paymentStatus: PaymentStatus.success,
            sendFromUserId: paymentModel.sendToUserId,
            sendToUserId: paymentModel.sendFromUserId,
          ),
        );
        Get.offAndToNamed(
          RoutePaths.paymentSuccess,
          arguments: {
            'paymentModel': paymentModel.copyWith(
              paymentStatus: PaymentStatus.success,
              sendFromUserId: paymentModel.sendToUserId,
              sendToUserId: paymentModel.sendFromUserId,
            ),
          },
        );
      } catch (err) {
        Get.snackbar(
          'Error',
          "$err",
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

  onReject() async {
    try {
      await FirebaseFireStore.to.finalPayment(
        paymentModel.copyWith(
          paymentStatus: PaymentStatus.cancelled,
          sendFromUserId: paymentModel.sendToUserId,
          sendToUserId: paymentModel.sendFromUserId,
        ),
      );
      Get.offAndToNamed(
        RoutePaths.paymentFailed,
        arguments: {
          'paymentModel': paymentModel.copyWith(
            paymentStatus: PaymentStatus.cancelled,
            sendFromUserId: paymentModel.sendToUserId,
            sendToUserId: paymentModel.sendFromUserId,
          ),
        },
      );
    } catch (err) {
      Get.snackbar(
        'Error',
        "$err",
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
