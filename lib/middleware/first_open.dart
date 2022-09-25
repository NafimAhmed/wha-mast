import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/auth/auth_service.dart';
import '../route/routes.dart';

class FirstOpen extends GetMiddleware {
  final authService = Get.find<AuthService>();

  @override
  RouteSettings? redirect(String? route) {
    return authService.fopening.value ? null : RouteSettings(name: RouteManeger.opening);
  }
}
