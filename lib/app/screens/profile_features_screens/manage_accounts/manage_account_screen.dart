import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../widgets/custom_text_field.dart';
import 'bank_account_page.dart';
import 'user_cards_page.dart';

class ManageAccountScreen extends StatelessWidget {
  const ManageAccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.primary,
          title: CustomTextField(
            text: 'Manage Account',
            fontWeight: FontWeight.w600,
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
          bottom: PreferredSize(
            preferredSize: Size(MediaQuery.of(context).size.width, 50.h),
            child: Container(
              color: Colors.white,
              height: 50.h,
              child: TabBar(
                indicatorColor: Theme.of(context).colorScheme.secondary,
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorWeight: 4,

                unselectedLabelStyle: GoogleFonts.roboto(
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w700,
                  color: Colors.black38,
                ),
                tabs: [
                  Tab(
                    child: CustomTextField(
                      text: 'DEBIT/CREDIT CARD',
                        fontSize: 13.sp,
                        font: '',
                        fontWeight: FontWeight.w700,
                        textColor: Colors.black,
                    ),
                  ),
                  Tab(
                    child: CustomTextField(
                      text: 'BANK ACCOUNT',
                      font: '',
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w700,
                      textColor: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        body: const TabBarView(
          children: [
            UserCardsPage(),
            BankAccountPage(),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.amberAccent,
          onPressed: () {},
          child: Icon(
            Icons.add,
            size: 25.h,
          ),
        ),
      ),
    );
  }
}
