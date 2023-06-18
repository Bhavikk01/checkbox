
import 'package:get/get.dart';

import 'payment_notifier_controller.dart';

class PaymentNotifierBinding implements Bindings {

  @override
  void dependencies() {
    Get.put(PaymentNotifierController());
  }

}