import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'controllers/visits.controller.dart';

class VisitsScreen extends GetView<VisitsController> {
  const VisitsScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('VisitsScreen'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'VisitsScreen is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}