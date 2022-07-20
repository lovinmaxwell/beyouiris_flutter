import 'package:beyou/presentation/login/login.screen.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

import '../core/interfaces/app_gloable.dart';
import '../core/interfaces/setting.dart';
import 'local.storage.dart';

class BaseService extends GetConnect {
  final store = Get.find<LocalStorage>();
  final AppGlobal globals = Get.find<AppGlobal>();
  @override
  void onInit() {
    httpClient.baseUrl = globals.baseURL;
    httpClient.defaultContentType = "application/json";
    httpClient.timeout = const Duration(seconds: 60);
    httpClient.addResponseModifier((request, response) async {
      if (kDebugMode) {
        print(response.body);
      }
      return response;
    });
    // httpClient.addRequestModifier((request) async {
    //   return request;
    // });
    // httpClient.addRequestModifier((request) => null);
    // var headers = {'Authorization': "Bearer $token"};
    // httpClient.addAuthenticator((request) async {
    //   request.headers.addAll(headers);
    //   return request;
    // });

    super.onInit();
  }

  Future loginUser({required String name, required String password}) async {
    String url = ApiRoute.login;

    final body = 'usr=$name&pwd=$password';
    final headers = {"Accept": "application/json"};
    final response = await post(url, body, contentType: 'application/x-www-form-urlencoded', headers: headers);
    return response.body;
  }

  void logout() {
    AppSetting setting = store.appSetting;
    setting.token = null;
    setting.user_name = null;
    setting.authenticated = false;
    store.appSetting = setting;
    Get.offAll(LoginScreen());
  }
}

class ApiRoute {
  static const String login = "/api/method/beyouiris.api.auth.app.login";
  static const String getSocialMedia = "/api/resource/Social Media";
}
