import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'controllers/salon_classification.controller.dart';

class SalonClassificationScreen extends GetView<SalonClassificationController> {
  const SalonClassificationScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SalonClassificationScreen'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Obx(() => Text(
                  "${controller.count}",
                  style: TextStyle(fontSize: 20),
                )),
            IconButton(onPressed: () => controller.increment(), icon: const Icon(Icons.add_box))
          ],
        ),
      ),
    );
  }
}
