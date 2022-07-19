import 'package:beyou/infrastructure/navigation/bindings/controllers/controllers_bindings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'domain/core/interfaces/app_gloable.dart';
import 'presentation/home/home.screen.dart';

void main() async {
  //** Init Global Variables */
  Get.put(AppGlobal());

  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main();

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      navigatorKey: Get.key,
      initialRoute: "/",
      initialBinding: HomeControllerBinding(),
      getPages: [
        GetPage(
          name: "/",
          page: (() => const HomeScreen()),
        ),
      ],
      home: const HomeScreen(),
    );
  }
}
