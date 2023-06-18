
import 'package:checkbox1/app/routes/route_paths.dart';
import 'package:checkbox1/app/screens/auth_screen/getx_helper/sign_up_binding.dart';
import 'package:checkbox1/app/screens/auth_screen/verify_code_screen.dart';
import 'package:checkbox1/app/screens/dashboard_pages/send_money_page.dart';
import 'package:checkbox1/app/screens/home_page/chat_space_page.dart';
import 'package:checkbox1/app/screens/home_page/getx_helper/chat_space_bindings.dart';
import 'package:checkbox1/app/screens/home_page/profile_page.dart';
import 'package:checkbox1/app/screens/payment_status/getx_helper/payment_notifier_binding.dart';
import 'package:checkbox1/app/screens/payment_status/getx_helper/user_option_binding.dart';
import 'package:checkbox1/app/screens/payment_status/payment_notifi_page.dart';
import 'package:checkbox1/app/screens/payment_status/payment_success_page.dart';
import 'package:checkbox1/app/screens/profile_features_screens/add_funds_page.dart';
import 'package:checkbox1/app/screens/profile_features_screens/manage_accounts/card_details_page.dart';
import 'package:checkbox1/app/screens/profile_features_screens/manage_accounts/manage_account_screen.dart';
import 'package:checkbox1/app/screens/profile_features_screens/withdraw_page.dart';
import 'package:get/get.dart';

import '../screens/auth_screen/getx_helper/auth_binding.dart';
import '../screens/auth_screen/login_options.dart';
import '../screens/auth_screen/login_screen.dart';
import '../screens/auth_screen/sign_up_business/business_registration.dart';
import '../screens/auth_screen/sign_up_individual/register_individual.dart';
import '../screens/auth_screen/sign_up_option.dart';
import '../screens/auth_screen/splash_screen.dart';
import '../screens/dashboard_pages/getx_helper/send_money_binding.dart';
import '../screens/dashboard_pages/my_qr_code.dart';
import '../screens/home_page/getx_helper/home_binding.dart';
import '../screens/home_page/home_screen.dart';
import '../screens/payment_status/payment_failed_page.dart';
import '../screens/payment_status/success_payment_request.dart';
import '../screens/payment_status/user_option_page.dart';

class RouteClass {


  static List<GetPage> routes = [

    ///Starting Showcase
    GetPage(
      name: RoutePaths.splashScreen,
      page: () => const SplashScreen(),
    ),


    ///Authentication Screen
    GetPage(
      name: RoutePaths.loginScreen,
      page: () => const LoginScreen(),
    ),
    GetPage(
      name: RoutePaths.loginOption,
      page: () => const LoginOption(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: RoutePaths.otpScreen,
      page: () => const VerifyCodePage(),
    ),
    // GetPage(
    //   name: RoutePaths.accountCreated,
    //   page: () => const AccountSuccessPage(),
    // ),
    GetPage(
      name: RoutePaths.signUpOptionScreen,
      page: () => const SignUpOption(),
    ),
    GetPage(
      name: RoutePaths.signUpIndividual,
      page: () => SignUpIndividualScreen(),
      binding: SignUpBinding()
    ),
    GetPage(
      name: RoutePaths.signUpBusiness,
      page: () => SignUpBusinessScreen(),
      binding: SignUpBinding()
    ),


    ///MainPages
    GetPage(
      name: RoutePaths.homeScreen,
      page: () => const HomePage(),
      binding: HomeBinding()
    ),
    GetPage(
        name: RoutePaths.profilePage,
        page: () => const ProfilePage(),
    ),
    GetPage(
      name: RoutePaths.chatSpaceScreen,
      page: () => const ChatSpace(),
      binding: ChatSpaceBinding(),
    ),


    ///Dashboard Pages
    GetPage(
        name: RoutePaths.myQrCode,
        page: () => const MyQrCode(),
    ),
    GetPage(
      name: RoutePaths.sendMoneyPage,
      page: () => SendMoneyPage(),
      binding: SendMoneyBinding()
    ),


    ///Profile Pages
    GetPage(
      name: RoutePaths.addFundsPage,
      page: () => AddFundsPage(),
    ),
    GetPage(
      name: RoutePaths.withdrawFundsPage,
      page: () => WithdrawFundsPage(),
    ),
    GetPage(
      name: RoutePaths.manageAccountPage,
      page: () => const ManageAccountScreen(),
    ),
    GetPage(
      name: RoutePaths.cardDetailsPage,
      page: () => const CardDetailsPage(),
    ),


    /// Payment Status Pages
    GetPage(
      name: RoutePaths.paymentFailed,
      page: () => const PaymentFailedPage(),
    ),
    GetPage(
      name: RoutePaths.paymentSuccess,
      page: () => const PaymentSuccessPage(),
    ),
    GetPage(
      name: RoutePaths.paymentNotifierPage,
      page: () => const PaymentNotifierPage(),
      binding: PaymentNotifierBinding()
    ),
    GetPage(
      name: RoutePaths.userOptionPage,
      page: () => const UserOptionPage(),
      binding: UserOptionBinding()
    ),
    GetPage(
      name: RoutePaths.successNotification,
      page: () => const SuccessNotification(),
      binding: UserOptionBinding()
    ),

  ];
}