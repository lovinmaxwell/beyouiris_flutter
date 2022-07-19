import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../infrastructure/navigation/navigation_drawer.dart';
import 'controllers/salon.controller.dart';

class SalonScreen extends GetView<SalonController> {
  const SalonScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Obx(
      //     () => Text("${controller.globals.PageTitle}"),
      //   ),
      //   centerTitle: true,
      // ),
      // drawer: const NavigationDrawer(),
      body: Center(
        child: Text(
          '${controller.PageTitle} is working',
          style: const TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
