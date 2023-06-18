import 'package:get/get.dart';

import '../../../services/user.dart';
import 'chat_room_controller.dart';
import 'home_controller.dart';

class HomeBinding implements Bindings {

  @override
  Future<void> dependencies() async {
    Get.lazyPut(() => HomePageController());
    Get.put<UserStore>(UserStore());
    Get.lazyPut<ChatRoomController>(() => ChatRoomController());
  }

}