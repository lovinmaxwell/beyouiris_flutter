import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'controllers/daily_visit.controller.dart';

class DailyVisitScreen extends GetView<DailyVisitController> {
  const DailyVisitScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DailyVisitScreen'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'DailyVisitScreen is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
