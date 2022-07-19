import 'package:beyou/domain/core/base/base.controller.dart';
import 'package:get/get.dart';

import '../../home/controllers/home.controller.dart';

class DemosController extends BaseController {
  //TODO: Implement DemosController
  final PageTitle = "Demos";
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
