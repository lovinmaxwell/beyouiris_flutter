import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../infrastructure/navigation/navigation_drawer.dart';
import '../home/controllers/home.controller.dart';
import 'controllers/demos.controller.dart';

class DemosScreen extends GetView<DemosController> {
  const DemosScreen({Key? key}) : super(key: key);
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
          style: const TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
