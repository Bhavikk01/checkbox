import 'package:checkbox1/app/API/api_client.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'app/routes/route_paths.dart';
import 'app/routes/routes.dart';

void main() {
  Get.put(ApiClient());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(builder: (context, child) {
      return GetMaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.white,
            primary: const Color(0xff151729),
            secondary: const Color(0xff01485e),
            primaryContainer: const Color(0xfff4f2f3)
          ),
        ),
        debugShowCheckedModeBanner: false,
        getPages: RouteClass.routes,
        initialRoute: RoutePaths.splashScreen,
      );
    });
  }
}
