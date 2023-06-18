import 'package:checkbox1/app/screens/profile_features_screens/manage_accounts/getx_helper/manage_account_controller.dart';
import 'package:get/get.dart';

class ManageAccountBinding implements Bindings {

  @override
  void dependencies() {
    Get.put(ManageAccountController());
  }

}