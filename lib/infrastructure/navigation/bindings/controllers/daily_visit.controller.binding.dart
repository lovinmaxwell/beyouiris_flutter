import 'package:get/get.dart';

import '../../../../presentation/daily_visit/controllers/daily_visit.controller.dart';

class DailyVisitControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DailyVisitController>(
      () => DailyVisitController(),
    );
  }
}
