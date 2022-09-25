
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import 'config/contractors.dart';
import 'config/database.dart';
import 'config/theme/dark_theme.dart';
import 'config/theme/light_theme.dart';
import 'controllers/auth/auth_service.dart';
import 'route/bindings.dart';
import 'route/routes.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  // Database
  await Database().openDatabase();
  // auth
  await Get.putAsync(() => AuthService().init());
  // Running Application
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: InitVariable().appName,
        theme: light,
        darkTheme: dark,
        themeMode: Get.isDarkMode ? ThemeMode.dark : ThemeMode.light,
        initialBinding: SplashBinding(),
        initialRoute: RouteManeger.home,
        getPages: RouteManeger.routes,
        // navigatorObservers: [FlutterSmartDialog.observer],
        // builder: FlutterSmartDialog.init(),
      );
    });
  }
}