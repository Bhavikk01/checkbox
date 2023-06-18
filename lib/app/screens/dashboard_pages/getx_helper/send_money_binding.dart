import 'package:checkbox1/app/screens/dashboard_pages/getx_helper/send_money_controller.dart';
import 'package:get/get.dart';

class SendMoneyBinding implements Bindings {

  @override
  void dependencies() {
    Get.put(SendMoneyController());
  }

}