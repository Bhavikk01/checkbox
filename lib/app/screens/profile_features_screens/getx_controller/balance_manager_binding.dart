
import 'package:checkbox1/app/screens/profile_features_screens/getx_controller/balance_manage_controller.dart';
import 'package:get/get.dart';

class BalanceManageBinding implements Bindings {


  @override
  void dependencies() {
    Get.put(BalanceManageController());
  }

}