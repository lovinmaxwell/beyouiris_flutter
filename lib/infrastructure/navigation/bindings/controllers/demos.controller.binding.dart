import 'package:get/get.dart';

import '../../../../presentation/demos/controllers/demos.controller.dart';

class DemosControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DemosController>(
      () => DemosController(),
    );
  }
}
