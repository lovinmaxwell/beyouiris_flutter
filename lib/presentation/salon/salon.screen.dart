import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'controllers/salon.controller.dart';

class SalonScreen extends GetView<SalonController> {
  const SalonScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SalonScreen'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'SalonScreen is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
