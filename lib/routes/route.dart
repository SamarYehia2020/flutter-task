import 'package:flutter_task/view/screens/home.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const homeScreen = "/HomeScreen";
  static final routes = [
    GetPage(
      name: "/HomeScreen",
      page: () => HomeScreen(),
    ),
  ];
}
