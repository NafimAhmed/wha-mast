import 'package:get/get.dart';

import '../controllers/auth/login_cont.dart';
import '../controllers/initial/opening_cont.dart';
import '../controllers/splash_cont.dart';


class SplashBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashController>(() => SplashController());
  }
}

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashController>(() => SplashController());
  }
}

class LoginBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(() => LoginController());
  }
}

class OpeningBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OpeningController>(() => OpeningController());
  }
}

