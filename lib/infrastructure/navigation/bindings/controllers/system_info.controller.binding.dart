import 'package:get/get.dart';

import '../../../../presentation/system_info/controllers/system_info.controller.dart';

class SystemInfoControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SystemInfoController>(
      () => SystemInfoController(),
    );
  }
}
