import 'package:checkbox1/app/screens/profile_features_screens/manage_accounts/getx_helper/manage_account_controller.dart';
import 'package:checkbox1/app/screens/profile_features_screens/widgets/debit_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class UserCardsPage extends GetView<ManageAccountController> {
  const UserCardsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SmartRefresher(
        controller: controller.refreshCards,
        enablePullDown: true,
        enablePullUp: false,
        onRefresh: controller.onRefreshCards,
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
          child: MediaQuery.removePadding(
            context: context,
            removeRight: true,
            removeLeft: true,
            removeTop: true,
            child: Obx(
              () => !controller.isLoadingCards.value
                  ? ListView.builder(
                      itemCount: controller.userCards.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return DebitCardDesign(
                          cardHolderName: controller.userCards[index].cardHolderName,
                          cardNumber: controller.userCards[index].cardNumber,
                          expiryDate: controller.userCards[index].cardExpiryDate,
                          cardIcon: 'assets/master_card.png',
                        );
                      },
                    )
                  : Center(
                      child: CircularProgressIndicator(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
            ),
          ),
        ),
      ),
    );
  }
}
