import 'package:beyou/infrastructure/navigation/navigation_drawer.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'controllers/settings.controller.dart';

class SettingsScreen extends GetView<SettingsController> {
  const SettingsScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Obx(
          () => Text("${controller.globals.PageTitle}"),
        ),
        centerTitle: true,
      ),
      drawer: const NavigationDrawer(),
      body: Center(
        child: Text(
          '${controller.PageTitle} is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
