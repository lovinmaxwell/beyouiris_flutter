import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../config.dart';
import '../../presentation/screens.dart';
import 'bindings/controllers/controllers_bindings.dart';
import 'routes.dart';

class EnvironmentsBadge extends StatelessWidget {
  final Widget child;
  EnvironmentsBadge({required this.child});
  @override
  Widget build(BuildContext context) {
    var env = ConfigEnvironments.getEnvironments()['env'];
    return env != Environments.PRODUCTION
        ? Banner(
            location: BannerLocation.topStart,
            message: env!,
            color: env == Environments.QAS ? Colors.blue : Colors.purple,
            child: child,
          )
        : SizedBox(child: child);
  }
}

class Nav {
  static List<GetPage> routes = [
    GetPage(
      name: Routes.HOME,
      page: () => HomeScreen(),
      binding: HomeControllerBinding(),
    ),
    GetPage(
      name: Routes.LOGIN,
      page: () => LoginScreen(),
      binding: LoginControllerBinding(),
    ),
    GetPage(
      name: Routes.DAILY_VISIT,
      page: () => const DailyVisitScreen(),
      binding: DailyVisitControllerBinding(),
    ),
    GetPage(
      name: Routes.VISITS,
      page: () => const VisitsScreen(),
      binding: VisitsControllerBinding(),
    ),
    GetPage(
      name: Routes.SALON,
      page: () => const SalonScreen(),
      binding: SalonControllerBinding(),
    ),
    GetPage(
      name: Routes.SALON_CLASSIFICATION,
      page: () => const SalonClassificationScreen(),
      binding: SalonClassificationControllerBinding(),
    ),
    GetPage(
      name: Routes.SOCIAL_MEDIA,
      page: () => const SocialMediaScreen(),
      binding: SocialMediaControllerBinding(),
    ),
    GetPage(
      name: Routes.SETTINGS,
      page: () => const SettingsScreen(),
      binding: SettingsControllerBinding(),
    ),
    GetPage(
      name: Routes.DEMOS,
      page: () => const DemosScreen(),
      binding: DemosControllerBinding(),
    ),
    GetPage(
      name: Routes.THERAPISTS,
      page: () => const TherapistsScreen(),
      binding: TherapistsControllerBinding(),
    ),
    GetPage(
      name: Routes.THERAPIST_TYPE,
      page: () => const TherapistTypeScreen(),
      binding: TherapistTypeControllerBinding(),
    ),
    GetPage(
      name: Routes.SYSTEM_INFO,
      page: () => const SystemInfoScreen(),
      binding: SystemInfoControllerBinding(),
    ),
  ];
}
