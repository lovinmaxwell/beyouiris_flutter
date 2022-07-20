import 'package:beyou/infrastructure/navigation/bindings/controllers/controllers_bindings.dart';
import 'package:beyou/presentation/home/home.screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import '../../../domain/base/base.controller.dart';
import '../../../domain/core/interfaces/setting.dart';
import '../../../infrastructure/navigation/routes.dart';

class LoginController extends BaseController {
  final RxString message = "Not Authorized".obs;
  final RxBool canCheckBiometrics = false.obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onClose() {}

  Future<void> loginUser({required String name, required String password, required BuildContext context}) async {
    EasyLoading.show(maskType: EasyLoadingMaskType.custom, status: 'loading...', dismissOnTap: false);

    await baseServices.loginUser(name: name, password: password).then((value) {
      // print(value.statusCode);
      // print(value.body);
      // log(jsonEncode(value.body));

      if (value != null) {
        if (kDebugMode) {
          print(value['success']);
          print(value['token']);
          print(value['user_name']);
        }
        if (value['success'] == true) {
          AppSetting setting = store.appSetting;
          setting.token = value['token'];
          setting.user_name = value['user_name'];
          setting.authenticated = true;

          store.appSetting = setting;
          Get.offAll(
            () => const HomeScreen(),
            binding: HomeControllerBinding(),
          );
          // Get.offAndToNamed(Routes.HOME);
        } else {
          String mgs = value['message'] ?? 'Login Failed';
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text(mgs),
          ));
        }
      }
      EasyLoading.dismiss();
    }, onError: (err) {
      if (kDebugMode) {
        print('err Login');
        print(err);
      }

      EasyLoading.dismiss();
      return ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('Login Failed'),
      ));
    });
  }
}
