
import 'package:checkbox1/app/routes/route_paths.dart';
import 'package:get/get.dart';

import '../screens/auth_screen/getx_helper/auth_binding.dart';
import '../screens/auth_screen/login_options.dart';
import '../screens/auth_screen/login_screen.dart';
import '../screens/auth_screen/splash_screen.dart';
import '../screens/home_page/getx_helper/home_binding.dart';
import '../screens/home_page/home_screen.dart';

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
      binding: AuthBinding(),
    ),
    GetPage(
      name: RoutePaths.loginOption,
      page: () => const LoginOption(),
      binding: AuthBinding(),
    ),


    ///MainPages
    GetPage(
      name: RoutePaths.homeScreen,
      page: () => const HomePage(),
      binding: HomeBinding()
    ),

  ];
}