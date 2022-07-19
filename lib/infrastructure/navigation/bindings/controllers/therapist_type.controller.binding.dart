import 'package:get/get.dart';

import '../../../../presentation/therapist_type/controllers/therapist_type.controller.dart';

class TherapistTypeControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TherapistTypeController>(
      () => TherapistTypeController(),
    );
  }
}
