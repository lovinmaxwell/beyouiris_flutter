// import 'package:get/get.dart';
// import 'package:get_storage/get_storage.dart';
// import 'package:oroona/app/base/local.storage.dart';
// import 'package:oroona/app/routes/app_pages.dart';
// import 'package:oroona/config/config.dart';
// import 'package:oroona/utils/app_global.dart';

// class BaseProvider extends GetConnect {
//   final AppGlobal globals = Get.find<AppGlobal>();
//   final store = Get.find<LocalStorage>();
//   final box = GetStorage(Config.getStorageOffline);
//   final boxConfig = GetStorage(Config.getStorageConfig);

//   get localDeliveryLocationName => box.read(AppLocalKey.appDeliveryLocationName);

//   get localDeliveryLocationWarehouse => box.read(AppLocalKey.appDeliveryLocationWarehouse);

//   get localDeliveryLocationParent => box.read(AppLocalKey.appDeliveryLocationParent);

//   Future oroonaPost({required url, required body}) async {
//     var userToken = boxConfig.read(AppLocalKey.configUserToken);

//     // final headers = {"Accept": "application/json", "Authorization": "$userToken"};
//     final headers = <String, String>{
//       "Accept": "application/json",
//       "Authorization": "$userToken",
//       'Content-Type': 'application/json; charset=UTF-8',
//     };

//     final response = await post(url, body, contentType: 'application/x-www-form-urlencoded', headers: headers);

//     if (response.statusCode == 403) {
//       if (response.body["exc_type"] == "PermissionError") {
//         Get.toNamed(Routes.LOGIN);
//       }
//     }

//     return response;
//   }

//   Future oroonaGet({required url}) async {
//     var userToken = boxConfig.read(AppLocalKey.configUserToken);
//     // print("userToken");
//     // print(userToken);
//     final headers = {"Accept": "application/json", "Authorization": "$userToken"};

//     final response = await get(url, contentType: 'application/x-www-form-urlencoded', headers: headers);

//     if (response.statusCode == 403) {
//       if (response.body["exc_type"] == "PermissionError") {
//         boxConfig.write(AppLocalKey.configUserLoggedIn, false);
//         Get.toNamed(Routes.LOGIN);
//       }
//     }

//     return response;
//   }
// }
