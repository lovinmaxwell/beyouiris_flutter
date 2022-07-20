// ignore_for_file: non_constant_identifier_names

import 'package:beyou/infrastructure/navigation/bindings/controllers/controllers_bindings.dart';
import 'package:beyou/presentation/login/login.screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'config.dart';
import 'domain/base/base.service.dart';
import 'domain/base/local.storage.dart';
import 'domain/core/interfaces/app_gloable.dart';
import 'infrastructure/navigation/routes.dart';

void main() async {
  //** Init Global Variables */
  await __init__();

  runApp(const Main());
}

__init__() async {
  //** Creating Get Storage for local config */
  await GetStorage.init(getStorageConfig);

  //** Init LocalStorage */
  // Get.putAsync(() => LocalStorage().init());
  Get.put(LocalStorage());

  //** Init Global Variables */
  Get.put(AppGlobal());

  Get.put(BaseService());
}

class Main extends StatelessWidget {
  const Main();

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      navigatorKey: Get.key,
      initialRoute: '/',
      initialBinding: LoginControllerBinding(),
      // getPages: [
      //   GetPage(
      //     name: "/",
      //     page: (() => const HomeScreen()),
      //     binding: HomeControllerBinding(),
      //   ),
      //   GetPage(
      //     name: "/login",
      //     page: (() => LoginScreen()),
      //     binding: LoginControllerBinding(),
      //   ),
      // ],
      home: LoginScreen(),
      builder: EasyLoading.init(),
    );
  }
}
