
import 'package:hive_flutter/hive_flutter.dart';

class Database {
  Future<void> openDatabase() async {
    // Firebase Database
    // Hive Database
    await Hive.initFlutter();
    // ----------
    await Hive.openBox("firstOpen");
    await Hive.openBox("auth");
  }
}
