import 'package:get/get.dart';

import '../../../../presentation/therapists/controllers/therapists.controller.dart';

class TherapistsControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TherapistsController>(
      () => TherapistsController(),
    );
  }
}
