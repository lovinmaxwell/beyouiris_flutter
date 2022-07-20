import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../config.dart';
import '../core/interfaces/setting.dart';

enum _LocalStorageKey { appSettings, appDashboard }

class LocalStorage extends GetxService {
  // Init GetStorage
  late GetStorage _box = GetStorage(getStorageConfig);

  @override
  void onInit() {
    super.onInit();
    _box = GetStorage(getStorageConfig);
  }

  Future<LocalStorage> init() async {
    _box = GetStorage(getStorageConfig);
    return this;
  }

  //** App Setting */
  get localAppSetting => _box.read(_LocalStorageKey.appSettings.name);

  AppSetting get appSetting {
    return localAppSetting != null ? AppSetting.fromJson(localAppSetting) : AppSetting();
  }

  set appSetting(AppSetting setting) {
    _box.write(_LocalStorageKey.appSettings.name, setting.toJson());
  }
}
