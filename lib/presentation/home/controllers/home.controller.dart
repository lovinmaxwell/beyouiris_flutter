import 'package:beyou/domain/core/base/base.controller.dart';
import 'package:get/get.dart';

class HomeController extends BaseController {
  //TODO: Implement HomeController
  var tabIndex = 0.obs;
  // void changedTabIndex(int index) {
  //   tabIndex = index;
  //   update();
  // }

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
