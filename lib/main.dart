import 'package:checkbox1/app/API/api_client.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'app/routes/route_paths.dart';
import 'app/routes/routes.dart';
import 'app/screens/home_page/getx_helper/chat_room_controller.dart';
import 'app/screens/payment_status/success_payment_request.dart';
import 'app/services/firebase.dart';
import 'app/services/storage.dart';
import 'app/services/user.dart';
import 'firebase_options.dart';

Future<void> main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform
  );
  Get.put<FirebaseFireStore>(FirebaseFireStore());
  await Get.putAsync<StorageService>(() => StorageService().init());
  Get.put<UserStore>(UserStore());
  Get.put<ApiClient>(ApiClient());
  Get.lazyPut<ChatRoomController>(() => ChatRoomController());
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
