import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';

import '../../infrastructure/theme/app_theme.dart';
import '../core/interfaces/app_gloable.dart';
import 'base.service.dart';
import 'local.storage.dart';

enum DeviceType { Phone, Tablet }

DeviceType getDeviceType() {
  final data = MediaQueryData.fromWindow(WidgetsBinding.instance.window);
  return data.size.shortestSide < 550 ? DeviceType.Phone : DeviceType.Tablet;
}

get isTablet => getDeviceType() == DeviceType.Tablet;
get isPhone => getDeviceType() == DeviceType.Phone;

class BaseController extends GetxController {
  final AppGlobal globals = Get.find<AppGlobal>();
  final BaseService baseServices = Get.find<BaseService>();
  final store = Get.find<LocalStorage>();

  @override
  void onInit() {
    super.onInit();
    EasyLoading.instance
      ..displayDuration = const Duration(milliseconds: 2000)
      ..indicatorType = EasyLoadingIndicatorType.chasingDots
      ..loadingStyle = EasyLoadingStyle.custom
      ..indicatorSize = 45.0
      ..radius = 6.0
      ..progressColor = AppTheme.header
      ..backgroundColor = Colors.white
      ..indicatorColor = AppTheme.header
      ..textColor = Colors.black
      ..maskColor = AppTheme.quickSilver.withOpacity(0.3)
      ..userInteractions = false
      ..dismissOnTap = false;
  }
}
