import 'package:get/get.dart';

import '../middleware/auth_guard.dart';
import '../middleware/first_open.dart';
import '../views/auth/login_page.dart';
import '../views/home_page.dart';
import '../views/initial/first_open.dart';
import 'bindings.dart';


class RouteManeger {
  static String home = "/";

  static String login = "/login";
  static String opening = "/opening";


  static List<GetPage> routes = [
    GetPage(
      name: home,
      page: () => HomePage(),
      bindings: [HomeBinding()],
      transition: Transition.fadeIn,
      transitionDuration: Duration(milliseconds: 500),
      middlewares: [FirstOpen(), AuthGuard()]
    ),


    GetPage(
      name: login,
      page: () => LoginPage(),
      bindings: [LoginBinding()],
      transition: Transition.fadeIn,
      transitionDuration: Duration(milliseconds: 500),
    ),

    GetPage(
      name: opening,
      page: () => FirstOpening(),
      bindings: [OpeningBinding()],
      transition: Transition.fadeIn,
      transitionDuration: Duration(milliseconds: 500),
    ),
    
  ];
}
