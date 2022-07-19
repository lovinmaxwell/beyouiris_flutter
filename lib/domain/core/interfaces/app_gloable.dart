import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';

class AppGlobal extends GetxController {
  RxString PageTitle = "Home".obs;

  @override
  void onInit() {
    // EasyLoading.instance
    //   ..displayDuration = const Duration(milliseconds: 2000)
    //   ..indicatorType = EasyLoadingIndicatorType.chasingDots
    //   ..loadingStyle = EasyLoadingStyle.custom
    //   ..indicatorSize = 45.0
    //   ..radius = 6.0
    //   ..progressColor = OroonaPalette.yellow10
    //   ..backgroundColor = Colors.white
    //   ..indicatorColor = OroonaPalette.yellow10
    //   ..textColor = Colors.black
    //   ..maskColor = OroonaPalette.quickSilver.withOpacity(0.3)
    //   ..userInteractions = false
    //   ..dismissOnTap = false;

    super.onInit();
  }
}
