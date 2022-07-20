import 'package:get/get.dart';

import '../../../domain/base/base.controller.dart';

class SettingsController extends BaseController {
  //TODO: Implement SettingsController
  final PageTitle = "Setting";
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
