import 'dart:developer';
import 'package:checkbox1/app/models/payment_model/payment_model.dart';
import 'package:checkbox1/app/services/user.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../models/chat_room_model/chat_room_model.dart';
import '../models/enums/user_role.dart';
import '../models/user_model/user_model.dart';

class FirebaseFireStore extends GetxController {
  static FirebaseFireStore get to => Get.find();
  final FirebaseFirestore fireStore = FirebaseFirestore.instance;
  FirebaseAuth auth = FirebaseAuth.instance;

  /* This is the user services */
  Future<void> addUser(UserModel user) async {
    await fireStore.collection("Users").doc(user.uid).set(user.toJson());
  }

  Future<UserModel?> getUser(String uid) async {
    final doc = await fireStore.collection("Users").doc(uid).get();
    return doc.exists ? UserModel.fromJson(doc.data()!) : null;
  }

  Future<void> sendMessage(
      Map<String, dynamic> messageContent, String chatRoomId) async {
    return await fireStore
        .collection('chats')
        .doc(chatRoomId)
        .collection("chatList")
        .doc()
        .set(messageContent);
  }

  Stream<QuerySnapshot> readMessage(String docId) {
    return fireStore
        .collection("chats")
        .doc(docId)
        .collection("chatList")
        .orderBy("messageTm", descending: false)
        .snapshots();
  }

  Future<void> updateMessage(
      Map<String, dynamic> lastMessage, String chatRoomId) async {
    return await fireStore
        .collection('chats')
        .doc(chatRoomId)
        .update(lastMessage);
  }

  Stream<QuerySnapshot> getChatRoom() {
    var data = fireStore
        .collection("chats")
        .where("users", arrayContains: UserStore.to.uid);

    return data.orderBy("lastMessageTm", descending: false).snapshots();
  }

  Future<void> createChatRoom(ChatRoomModel chatRoom) async {
    final doc =
        await fireStore.collection("chats").doc(chatRoom.chatRoomId).get();
    if (!doc.exists) {
      await fireStore
          .collection("chats")
          .doc(chatRoom.chatRoomId)
          .set(chatRoom.toJson());
    }
  }

  generateChatRoomId(String myUserUid, String otherUserId) {
    if (myUserUid.substring(0, 1).codeUnitAt(0) >
        otherUserId.substring(0, 1).codeUnitAt(0)) {
      return "$otherUserId\_$myUserUid";
    } else {
      return "$myUserUid\_$otherUserId";
    }
  }

  Future<bool> handleEmailSignIn(email, password) async {
    try {
      User? user;
      UserModel? userModel;
      final UserCredential userCredential =
          await auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      user = userCredential.user;
      userModel = await getUser(user!.uid);
      if (userModel == null) {
        return false;
      } else {
        await UserStore.to.saveProfile(user.uid);
        return true;
      }
    } catch (e) {
      Get.snackbar(
        'Auth',
        e.toString(),
        borderRadius: 15,
        icon: const Icon(Icons.person),
        backgroundColor: Colors.white,
        snackPosition: SnackPosition.BOTTOM,
      );
      log('$e Occurred');
      return false;
    }
  }

  Future<bool> handleEmailSignUp(UserModel userModel) async {
    try {
      User? user;
      UserModel? newUser;
      UserCredential userCredential = await auth.createUserWithEmailAndPassword(
          email: userModel.cashboxAccount.cashboxEmail,
          password: userModel.cashboxAccount.cashboxPassword);
      user = userCredential.user;
      newUser = await getUser(user!.uid);
      if (newUser == null) {
        await addUser(userModel.copyWith(uid: user.uid));
        await UserStore.to.saveProfile(user.uid);
        return true;
      } else {
        return false;
      }
    } catch (e) {
      log('$e Occurred');
      Get.snackbar(
        'Auth',
        e.toString(),
        borderRadius: 15,
        icon: const Icon(Icons.person),
        backgroundColor: Colors.white,
        snackPosition: SnackPosition.BOTTOM,
      );
      return false;
    }
  }

  // handleForgotPassword(email) async {
  //   try {
  //     await auth.sendPasswordResetEmail(email: email).then((value) {
  //       Get.snackbar(
  //         'Auth',
  //         'Email sent successfully',
  //         borderRadius: 15,
  //         icon: const Icon(Icons.email),
  //         backgroundColor: Colors.white,
  //         snackPosition: SnackPosition.BOTTOM,
  //       );
  //     });
  //   } catch (e) {
  //     Get.snackbar(
  //       'Auth',
  //       e.toString(),
  //       borderRadius: 15,
  //       icon: const Icon(Icons.person),
  //       backgroundColor: Colors.white,
  //       snackPosition: SnackPosition.BOTTOM,
  //     );
  //   }
  // }

  Future<void> updateUserData(UserModel user) async {
    await fireStore.collection("Users").doc(user.uid).update(user.toJson());
    await UserStore.to.getProfile();
  }

  Future<QuerySnapshot<Map<String, dynamic>>?> getUserByName(username) async {
    return await fireStore
        .collection('Users')
        .where("firstName", isEqualTo: username)
        .get();
  }

 Future<QuerySnapshot<Map<String, dynamic>>> getAllTransaction() async {
    var fromTransaction = await fireStore
        .collection('transactions')
        .where('paymentFromUID', isEqualTo: UserStore.to.uid)
        .orderBy('dateOfPay', descending: false)
        .get();
    var toTransaction = await fireStore
        .collection('notification')
        .where('sendToUserId', isEqualTo: UserStore.to.uid)
        .orderBy('dateOfPay', descending: false)
        .get();
    fromTransaction.docs.addAll(toTransaction.docs);
    return fromTransaction;
 }

  Future<QuerySnapshot<Map<String, dynamic>>> getNotifications() async{
    var fromTransaction = await fireStore
        .collection('notification')
        .where('sendFromUserId', isEqualTo: UserStore.to.uid)
        .orderBy('dateOfPay', descending: false)
        .get();
    var toTransaction = await fireStore
        .collection('notification')
        .where('sendToUserId', isEqualTo: UserStore.to.uid)
        .orderBy('dateOfPay', descending: false)
        .get();
    fromTransaction.docs.addAll(toTransaction.docs);
    return fromTransaction;
  }

  proceedPayment(PaymentModel paymentModel) async {
    log("hello");
    var docId = fireStore
        .collection('notification')
        .doc().id;
    await fireStore
        .collection('notification')
        .doc(docId)
        .set(paymentModel.copyWith(paymentId: docId).toJson());
    log("hello1");
  }
}
