
import 'package:checkbox1/app/screens/payment_status/getx_helper/user_option_controller.dart';
import 'package:get/get.dart';

class UserOptionBinding implements Bindings{

  @override
  void dependencies() {
    Get.put(UserOptionController());
  }

}