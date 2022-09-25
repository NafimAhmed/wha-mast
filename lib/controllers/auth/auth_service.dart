
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';

class AuthService extends GetxService {
  Future<AuthService> init() async => this;

  final RxBool fopening = false.obs;
  final RxBool isPremium = false.obs;
  final RxBool isValidation = true.obs;

  Box firstOpen = Hive.box("firstOpen");
  Box auth = Hive.box("auth");

  @override
  void onInit() {
    super.onInit();
    opening();
    authCheck();
  }

  void opening() {
    if (firstOpen.isNotEmpty) {
      fopening.value = true;
    } else {
      fopening.value = false;
    }
  }

  void authCheck() {
    if (auth.isNotEmpty) {
      isPremium.value = true;
    } else {
      isPremium.value = false;
    }
  }
  
  

  // void validation() {
  //   var validData = FirebaseFirestore.instance.collection("appvalidation");
  //   validData.doc('validation').get().then((fields) {
  //     DateTime cDate = DateTime.now();
  //     DateTime d = DateTime.parse(fields.get('date').toDate().toString());
  //     print(d.toString());
  //     if (fields.get('active')) {
  //       if (cDate.isBefore(d)) {
  //         isValidation.value = true;
  //       } else {
  //         isValidation.value = false;
  //       }
  //     } else {
  //       isValidation.value = true;
  //     }
  //     print(isValidation.value);
  //     // print("========= ${fields.get('active')}");
  //   });
  // }
}
