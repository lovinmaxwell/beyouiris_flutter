import 'package:get/get.dart';

import '../../../../presentation/salon_classification/controllers/salon_classification.controller.dart';

class SalonClassificationControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SalonClassificationController>(
      () => SalonClassificationController(),
    );
  }
}
