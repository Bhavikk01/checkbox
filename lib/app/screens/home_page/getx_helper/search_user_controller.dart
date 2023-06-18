import 'package:get/get.dart';

import '../../../models/user_model/user_model.dart';
import '../../../services/firebase.dart';

class SearchUserController extends GetxController {
  RxList<UserModel> searchedUsers = <UserModel>[].obs;
  var isSearching = false.obs;

  Future<void> searchUserByName(username) async {
    isSearching = true.obs;
    searchedUsers.clear();
    var data = await FirebaseFireStore.to.getUserByName(username);
    for(var chat in data!.docs){
      searchedUsers.add(UserModel.fromJson(chat.data()));
    }
    isSearching.value = false;
  }


}