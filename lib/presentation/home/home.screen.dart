import 'package:beyou/presentation/screens.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../infrastructure/navigation/custom_animated_bottom_bar.dart';
import '../../infrastructure/navigation/navigation.dart';
import '../../infrastructure/navigation/navigation_drawer.dart';
import '../../infrastructure/navigation/routes.dart';
import 'controllers/home.controller.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({Key? key}) : super(key: key);

  final _inactiveColor = Colors.grey;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Obx(
      //     () => Text("${controller.globals.PageTitle}"),
      //   ),
      //   centerTitle: true,
      // ),
      drawer: const NavigationDrawer(),
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
          onItemSelected: (index) {
            controller.tabIndex.value = index;
            switch (index) {
              case 0:
                controller.globals.PageTitle.value = "Visits";
                break;
              case 1:
                controller.globals.PageTitle.value = "Salons";
                break;
              case 2:
                controller.globals.PageTitle.value = "Demos";
                break;
              case 3:
                controller.globals.PageTitle.value = "Setting";
                break;
              default:
            }
          },
          items: <BottomNavyBarItem>[
            BottomNavyBarItem(
              icon: const Icon(Icons.calendar_month),
              title: const Text('Visits'),
              activeColor: Colors.green,
              inactiveColor: _inactiveColor,
              textAlign: TextAlign.center,
            ),
            BottomNavyBarItem(
              icon: const Icon(Icons.business_rounded),
              title: const Text('Salons'),
              activeColor: Colors.purpleAccent,
              inactiveColor: _inactiveColor,
              textAlign: TextAlign.center,
            ),
            BottomNavyBarItem(
              icon: const Icon(Icons.add_home_work_outlined),
              title: const Text(
                'Demos ',
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
      const DemosScreen(),
      const SettingsScreen(),
    ];
    return Obx(() => IndexedStack(
          index: controller.tabIndex.value,
          children: pages,
        ));
  }
}
