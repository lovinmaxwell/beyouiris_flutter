import 'package:get/get.dart';

import '../../../../presentation/daily_visit/controllers/daily_visit.controller.dart';
import '../../../../presentation/home/controllers/home.controller.dart';
import '../../../../presentation/salon/controllers/salon.controller.dart';
import '../../../../presentation/salon_classification/controllers/salon_classification.controller.dart';
import '../../../../presentation/settings/controllers/settings.controller.dart';
import '../../../../presentation/social_media/controllers/social_media.controller.dart';
import '../../../../presentation/visits/controllers/visits.controller.dart';

class HomeControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
    Get.lazyPut<DailyVisitController>(
      () => DailyVisitController(),
    );
    Get.lazyPut<SalonClassificationController>(
      () => SalonClassificationController(),
    );
    Get.lazyPut<SalonController>(
      () => SalonController(),
    );

    Get.lazyPut<SocialMediaController>(
      () => SocialMediaController(),
    );
    Get.lazyPut<VisitsController>(
      () => VisitsController(),
    );

    Get.lazyPut<SettingsController>(
      () => SettingsController(),
    );
  }
}
