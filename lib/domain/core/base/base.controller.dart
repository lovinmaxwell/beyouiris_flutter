import 'package:get/get.dart';

import '../interfaces/app_gloable.dart';

class BaseController extends GetxController {
  final AppGlobal globals = Get.find<AppGlobal>();
  // final store = Get.find<LocalStorage>();

  @override
  void onInit() {
    super.onInit();
  }
}
