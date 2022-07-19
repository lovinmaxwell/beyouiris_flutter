import 'package:get/get.dart';

import '../../../domain/core/base/base.controller.dart';
import '../../home/controllers/home.controller.dart';

class SalonController extends BaseController {
  //TODO: Implement SalonController
  final PageTitle = "Salons";
  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
