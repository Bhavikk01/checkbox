import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../../../models/chat_room_model/chat_room_model.dart';
import '../../../models/user_model/user_model.dart';
import '../../../routes/route_paths.dart';
import '../../../services/firebase.dart';
import '../../../services/user.dart';
import 'chat_room_state.dart';

class ChatRoomController extends GetxController {
  final state = ChatRoomState();
  var index = 0.obs;
  TextEditingController searchController = TextEditingController();
  RxList<UserModel> users = <UserModel>[].obs;
  RxList<UserModel> searchedUsers = <UserModel>[].obs;
  final myUserId = UserStore.to.uid;
  var isLoading = true.obs;
  var isSearching = false.obs;


  @override
  Future<void> onInit() async {
    asyncLoadData();

    super.onInit();
  }

  asyncLoadData() async {
    isLoading.value = true;
    var chatRoomList = FirebaseFireStore.to.getChatRoom();
    chatRoomList.listen((snapshot) async {
      isLoading.value = true;
      log('Loading');
      for (var chatRoom in snapshot.docChanges) {
        switch (chatRoom.type) {
          case DocumentChangeType.added:
            if (chatRoom.doc.data() != null) {
              log('This is the data: ${chatRoom.doc.data()}');
              Map<String, dynamic> chatRoomData = chatRoom.doc.data() as Map<String, dynamic>;
              state.chatRoomList.add(
                  ChatRoomModel.fromJson(chatRoomData)
              );
              if(chatRoomData['users'][0] == myUserId){
                state.otherUser.add(
                    (await FirebaseFireStore.to.getUser(chatRoomData['users'][1]))!
                );
              }else{
                state.otherUser.add(
                    (await FirebaseFireStore.to.getUser(chatRoomData['users'][0]))!
                );
              }
            }
            break;
          case DocumentChangeType.modified:
            if (chatRoom.doc.data() != null) {
              log('This is the change: ${chatRoom.doc.data()}');
              Map<String, dynamic> chatRoomData = chatRoom.doc.data() as Map<String, dynamic>;
              int changeIndex = state.chatRoomList.indexWhere((element) => element.chatRoomId == chatRoomData['chatRoomId']);
              state.chatRoomList[changeIndex] = state.chatRoomList[changeIndex].copyWith(
                lastMessage: chatRoomData['lastMessage'],
                lastMessageBy: chatRoomData['lastMessageBy'],
                lastMessageTm: DateTime.parse(chatRoomData['lastMessageTm']),
              );
              log('This is update: ${state.chatRoomList}');
            }
            break;
          case DocumentChangeType.removed:
            break;
        }
      }
      isLoading.value = false;
      log('Loading completed');
    }, onError: (error) => log("Listening failed: $error"));
  }

  Future<void> searchUsers(username) async {
    isSearching = true.obs;
    searchedUsers.clear();
    var data = await FirebaseFireStore.to.getUserByName(username);
    for(var chat in data!.docs){
      searchedUsers.add(UserModel.fromJson(chat.data()));
    }
    isSearching.value = false;
  }


  createChatRoom(ChatRoomModel chatRoomModel, UserModel otherUser) async {
    await FirebaseFireStore.to.createChatRoom(chatRoomModel);
    Get.toNamed(RoutePaths.chatSpaceScreen, arguments: {
      "chatRoomId": chatRoomModel.chatRoomId,
      "toUserProfile": otherUser.photoId,
      "toUserName": '${otherUser.firstName} ${otherUser.lastName}',
      "toUserUid": otherUser.uid
    });
  }

  generateChatRoomId(String myUserUid, String otherUserId) {
    if (myUserUid.substring(0, 1).codeUnitAt(0) >
        otherUserId.substring(0, 1).codeUnitAt(0)) {
      return "$otherUserId\_$myUserUid";
    } else {
      return "$myUserUid\_$otherUserId";
    }
  }
}
