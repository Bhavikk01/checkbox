import 'package:get/get.dart';

import 'payment_status_controller.dart';

class PaymentStatusBinding implements Bindings {

  @override
  void dependencies() {
    Get.put(PaymentStatusController());
  }

}