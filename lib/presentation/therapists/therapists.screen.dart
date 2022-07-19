import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'controllers/therapists.controller.dart';

class TherapistsScreen extends GetView<TherapistsController> {
  const TherapistsScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TherapistsScreen'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'TherapistsScreen is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
