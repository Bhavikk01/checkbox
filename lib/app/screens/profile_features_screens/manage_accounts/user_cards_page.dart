import 'package:checkbox1/app/screens/profile_features_screens/widgets/debit_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../routes/route_paths.dart';


class UserCardsPage extends StatelessWidget {
  const UserCardsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
        child: MediaQuery.removePadding(
          context: context,
          removeRight: true,
          removeLeft: true,
          removeTop: true,
          child: ListView.builder(
            itemCount: 10,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return const DebitCardDesign(
                cardHolderName: 'Bhavik Kothari',
                cardNumber: '6401063361304598',
                expiryDate: '03/23',
                cardIcon: 'assets/master_card.png',
              );
            },
          ),
        ),
      ),
    );
  }
}
