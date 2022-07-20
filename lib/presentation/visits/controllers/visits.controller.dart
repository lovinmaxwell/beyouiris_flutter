import 'package:get/get.dart';

import '../../../domain/base/base.controller.dart';
import '../../home/controllers/home.controller.dart';

class VisitsController extends BaseController {
  //TODO: Implement VisitsController
  final PageTitle = "Visits";
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
