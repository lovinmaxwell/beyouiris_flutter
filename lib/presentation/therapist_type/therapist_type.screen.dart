import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'controllers/therapist_type.controller.dart';

class TherapistTypeScreen extends GetView<TherapistTypeController> {
  const TherapistTypeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TherapistTypeScreen'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'TherapistTypeScreen is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
