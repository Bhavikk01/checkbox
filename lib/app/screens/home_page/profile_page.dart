import 'package:checkbox1/app/routes/route_paths.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../widgets/circular_listtile.dart';
import '../../widgets/custom_text_field.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: CustomTextField(
          text: 'Profile',
          fontWeight: FontWeight.w500,
          fontSize: 18.sp,
          font: '',
          textColor: Colors.white,
        ),
        centerTitle: true,
        actions: [
          Icon(
            Icons.more_vert,
            color: Colors.white,
            size: 25.h,
          ),
          SizedBox(
            width: 20.w,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 20.h),
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 13.h),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary,
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/wallet.png',
                      fit: BoxFit.cover,
                      height: 45.h,
                    ),
                    SizedBox(width: 10.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomTextField(
                          text: 'USD 123,550.00',
                          font: 'roboto',
                          fontSize: 23.sp,
                          fontWeight: FontWeight.w700,
                          textColor: Colors.white,
                        ),
                        SizedBox(height: 3.h),
                        CustomTextField(
                          text: 'Balance',
                          font: 'roboto',
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w500,
                          textColor: Colors.white70,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Get.toNamed(RoutePaths.addFundsPage);
                },
                child: CircularListTile(
                  title: 'Add funds',
                  leadingIcon: Icons.currency_exchange_outlined,
                  margin: EdgeInsets.only(top: 10.h, bottom: 8.h),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Get.toNamed(RoutePaths.withdrawFundsPage);
                },
                child: CircularListTile(
                  title: 'Withdraw',
                  leadingIcon: Icons.currency_exchange,
                  margin: EdgeInsets.only(bottom: 8.h),
                  subTitle:
                      'Lorem ipso se kj vekjf sje bfkesrv nfmvsn vr gekj rbk k dkvf v erhd kkvjs v sejf sv',
                ),
              ),
              GestureDetector(
                onTap: () {
                  Get.toNamed(RoutePaths.manageAccountPage);
                },
                child: CircularListTile(
                  title: 'Manage accounts',
                  subTitle:
                      'Lorem ipso se kj vekjf sje bfkesrv nfmvsn vr gekj rbk k dkvf v erhd kkvjs v sejf sv',
                  leadingIcon: Icons.wallet,
                  margin: EdgeInsets.only(bottom: 8.h),
                ),
              ),
              const CircularListTile(
                title: 'My profile',
                subTitle:
                    'Lorem ipso se kj vekjf sje bfkesrv nfmvsn vr gekj rbk k dkvf v erhd kkvjs v sejf sv',
                leadingIcon: Icons.person_2_outlined,
                margin: EdgeInsets.zero,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
