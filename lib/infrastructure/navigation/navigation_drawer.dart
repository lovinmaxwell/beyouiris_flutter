import 'package:beyou/infrastructure/navigation/bindings/controllers/controllers_bindings.dart';
import 'package:beyou/presentation/screens.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:package_info_plus/package_info_plus.dart';

// final deviceInfoPlugin = DeviceInfoPlugin();
// final deviceInfo = await deviceInfoPlugin.deviceInfo;
class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Drawer(
        child: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const BuildMenuHeader(),
            buildMenuItems(context),
          ],
        )),
      );
}

class BuildMenuHeader extends StatefulWidget {
  const BuildMenuHeader({
    Key? key,
  }) : super(key: key);

  @override
  State<BuildMenuHeader> createState() => _BuildMenuHeaderState();
}

class _BuildMenuHeaderState extends State<BuildMenuHeader> {
  PackageInfo _packageInfo = PackageInfo(
    appName: 'Unknown',
    packageName: 'Unknown',
    version: 'Unknown',
    buildNumber: 'Unknown',
    buildSignature: 'Unknown',
  );
  @override
  void initState() {
    super.initState();
    _initPackageInfo();
  }

  Future<void> _initPackageInfo() async {
    final info = await PackageInfo.fromPlatform();
    setState(() {
      _packageInfo = info;
    });
  }

  Widget _infoTile(String title, String subtitle) {
    return Text("$title : ${subtitle.isEmpty ? 'Not set' : subtitle}");
  }

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      decoration: const BoxDecoration(
        color: Colors.white30,
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(6), bottomRight: Radius.circular(6)),
        // boxShadow: [
        //   BoxShadow(
        //     color: Color(0x7EE2E2E2),
        //     blurRadius: 12.0, // soften the shadow
        //     spreadRadius: 1, //extend the shadow
        //     offset: Offset(0, 10),
        //   )
        // ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Image(
                image: AssetImage('assets/images/beyouiris-trans.png'),
                width: 100,
                height: 100,
              ),
              const Text("Be You Iris"),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Logout"),
                      SizedBox(width: 10),
                      Icon(Icons.logout),
                    ],
                  )),
              // _infoTile('App Name', _packageInfo.appName),
              // _infoTile('Package Name', _packageInfo.packageName),
              _infoTile('App Version', _packageInfo.version),
              // _infoTile('Build number', _packageInfo.buildNumber),
              // _infoTile('Build signature', _packageInfo.buildSignature),
            ],
          )
        ],
      ),
    );
  }
}

Widget buildMenuItems(BuildContext context) => Container(
      padding: const EdgeInsets.only(top: 24),
      child: Wrap(
        runSpacing: 20,
        children: [
          Column(
            children: [
              ListTile(
                leading: const Icon(Icons.calendar_month),
                title: const Text("Visits"),
                onTap: () => Get.to(
                  () => const VisitsScreen(),
                  binding: VisitsControllerBinding(),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.business_rounded),
                title: const Text("Salon"),
                onTap: () => Get.to(
                  () => const SalonScreen(),
                  binding: SalonControllerBinding(),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.add_home_work_outlined),
                title: const Text("Deoms"),
                onTap: () => Get.to(
                  () => const DemosScreen(),
                  binding: DemosControllerBinding(),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.account_tree_rounded),
                title: const Text("Classification"),
                onTap: () => Get.to(
                  () => const SalonClassificationScreen(),
                  binding: SalonClassificationControllerBinding(),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.facebook),
                title: const Text("Social Media"),
                onTap: () => Get.to(
                  () => const SocialMediaScreen(),
                  binding: SocialMediaControllerBinding(),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.people_sharp),
                title: const Text("Therapists"),
                onTap: () => Get.to(
                  () => const TherapistsScreen(),
                  binding: TherapistsControllerBinding(),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.account_tree_rounded),
                title: const Text("Therapists Type"),
                onTap: () => Get.to(
                  () => const TherapistTypeScreen(),
                  binding: TherapistTypeControllerBinding(),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.settings),
                title: const Text("Setting"),
                onTap: () => Get.to(
                  () => const SettingsScreen(),
                  binding: SettingsControllerBinding(),
                ),
              ),
            ],
          ),
          Column(
            children: [
              ListTile(
                leading: const Icon(Icons.settings_input_composite_outlined),
                title: const Text("System Info"),
                onTap: () => Get.to(
                  () => const SystemInfoScreen(),
                  binding: SystemInfoControllerBinding(),
                ),
              ),
            ],
          )
        ],
      ),
    );
