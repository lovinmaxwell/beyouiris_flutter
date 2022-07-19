import 'package:beyou/infrastructure/navigation/bindings/controllers/controllers_bindings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'presentation/home/home.screen.dart';

void main() async {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main();

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: "/",
      initialBinding: HomeControllerBinding(),
      getPages: [
        GetPage(
          name: "/",
          page: (() => HomeScreen()),
        ),
      ],
      home: HomeScreen(),
    );
  }
}
