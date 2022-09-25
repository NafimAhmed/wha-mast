


import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';

class OpeningController extends GetxController{


  @override
  void onInit() {
    super.onInit();
    splashOut();
  }
  
  void splashOut() async{
    print('ready in 3...');
    await Future.delayed(Duration(seconds: 1));
    print('ready in 2...');
    await Future.delayed(Duration(seconds: 1));
    print('ready in 1...');
    await Future.delayed(Duration(seconds: 1));
    print('go!');
    FlutterNativeSplash.remove();
  }
  
}