import 'package:checkbox1/app/services/firebase.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../../../../models/card_model/card_model.dart';
import '../../../../services/user.dart';

class ManageAccountController extends GetxController {
  RxList<CardModel> userCards = <CardModel>[].obs;
  var isLoadingCards = true.obs;

  TextEditingController bankName = TextEditingController();
  TextEditingController cardHolderName = TextEditingController();
  TextEditingController cardNumber = TextEditingController();
  TextEditingController cardExpiry = TextEditingController();
  TextEditingController cardCvv = TextEditingController();

  RefreshController refreshCards = RefreshController();

  var isDefault = false.obs;

  onRefreshCards() {
    getUserCards().then(
      (_) => refreshCards.refreshCompleted(resetFooterState: true),
    );
  }

  @override
  Future<void> onInit() async {
    await getUserCards();
    super.onInit();
  }

  Future<void> getUserCards() async {
    isLoadingCards.value = true;
    userCards.clear();
    var cardsData = await FirebaseFireStore.to.getAllUserCards();
    for (var card in cardsData.docs) {
      userCards.add(CardModel.fromJson(card.data()));
    }
    isLoadingCards.value = false;
  }

  Future<void> saveCardDetails() async {
    try {
      await FirebaseFireStore.to.saveCardDetails(
        CardModel(
          balance: '',
          cardExpiryDate: cardExpiry.text,
          cardHolderName: cardHolderName.text,
          cardNumber: cardNumber.text,
          cardType: '',
          cvv: cardCvv.text,
          cardByUserId: UserStore.to.uid
        ),
      );
      Get.back();
    } catch (err) {
      Get.snackbar(
        'Error',
        "$err",
        borderRadius: 15,
        margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        snackPosition: SnackPosition.BOTTOM,
        colorText: Colors.white,
        backgroundColor: const Color(0xff041c50),
        icon: const Icon(Icons.person),
      );
    }
  }
}
