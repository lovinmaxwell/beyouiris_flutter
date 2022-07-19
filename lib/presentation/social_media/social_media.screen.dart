import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'controllers/social_media.controller.dart';

class SocialMediaScreen extends GetView<SocialMediaController> {
  const SocialMediaScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SocialMediaScreen'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'SocialMediaScreen is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
