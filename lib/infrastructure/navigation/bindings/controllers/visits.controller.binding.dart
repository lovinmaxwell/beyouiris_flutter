import 'package:get/get.dart';

import '../../../../presentation/visits/controllers/visits.controller.dart';

class VisitsControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<VisitsController>(
      () => VisitsController(),
    );
  }
}
