import 'package:beyou/presentation/screens.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../infrastructure/navigation/custom_animated_bottom_bar.dart';
import '../../infrastructure/navigation/navigation.dart';
import '../../infrastructure/navigation/routes.dart';
import 'controllers/home.controller.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({Key? key}) : super(key: key);

  final _inactiveColor = Colors.grey;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody(),
      bottomNavigationBar: _buildBottomBar(),
    );
  }

  Widget _buildBottomBar() {
    return Obx(() => CustomAnimatedBottomBar(
          containerHeight: 70,
          backgroundColor: Colors.white,
          // selectedIndex: _currentIndex,
          selectedIndex: controller.tabIndex.value,
          showElevation: true,
          itemCornerRadius: 24,
          curve: Curves.easeIn,
          // onItemSelected: (index) => setState(() => _currentIndex = index),
          onItemSelected: (index) => controller.tabIndex.value = index,
          items: <BottomNavyBarItem>[
            BottomNavyBarItem(
              icon: const Icon(Icons.apps),
              title: const Text('Home'),
              activeColor: Colors.green,
              inactiveColor: _inactiveColor,
              textAlign: TextAlign.center,
            ),
            BottomNavyBarItem(
              icon: const Icon(Icons.people),
              title: const Text('Users'),
              activeColor: Colors.purpleAccent,
              inactiveColor: _inactiveColor,
              textAlign: TextAlign.center,
            ),
            BottomNavyBarItem(
              icon: const Icon(Icons.message),
              title: const Text(
                'Messages ',
              ),
              activeColor: Colors.pink,
              inactiveColor: _inactiveColor,
              textAlign: TextAlign.center,
            ),
            BottomNavyBarItem(
              icon: const Icon(Icons.settings),
              title: const Text('Settings'),
              activeColor: Colors.blue,
              inactiveColor: _inactiveColor,
              textAlign: TextAlign.center,
            ),
          ],
        ));
  }

  Widget getBody() {
    List<Widget> pages = [
      const VisitsScreen(),
      const SalonScreen(),
      const SalonClassificationScreen(),
      const SettingsScreen(),
    ];
    return Obx(() => IndexedStack(
          index: controller.tabIndex.value,
          children: pages,
        ));
  }
}
