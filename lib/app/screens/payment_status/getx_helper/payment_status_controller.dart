import 'package:get/get.dart';

import '../../../models/payment_model/payment_model.dart';

class PaymentStatusController extends GetxController {

  late PaymentModel paymentModel;

  @override
  void onInit() {
    paymentModel = Get.arguments['paymentModel'];
    super.onInit();
  }

}