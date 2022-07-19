import 'package:get/get.dart';

import '../../../../presentation/salon/controllers/salon.controller.dart';

class SalonControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SalonController>(
      () => SalonController(),
    );
  }
}
