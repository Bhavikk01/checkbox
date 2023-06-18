
import 'package:checkbox1/app/screens/auth_screen/getx_helper/sign_up_controller.dart';
import 'package:get/get.dart';

class SignUpBinding implements Bindings {

  @override
  void dependencies() {
    Get.put(SignUpController());
  }

}