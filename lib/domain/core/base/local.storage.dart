// import 'package:get/get.dart';
// import 'package:get_storage/get_storage.dart';
// import 'package:oroona/config/config.dart';
// import 'package:oroona/utils/app_global.dart';

// // enum _LocalStorageKey {
// //   appSettings,
// //   appDashboard,
// // }

// class LocalStorage extends GetxService {
//   late GetStorage box = GetStorage(Config.getStorageOffline);
//   late GetStorage boxConfig = GetStorage(Config.getStorageConfig);
//   late GetStorage boxTemp = GetStorage(Config.getStorageTemp);

//   @override
//   void onInit() {
//     box = GetStorage(Config.getStorageOffline);
//     boxConfig = GetStorage(Config.getStorageConfig);
//     boxTemp = GetStorage(Config.getStorageTemp);
//     super.onInit();
//   }

//   // User Token
//   String? get userToken => boxConfig.read(AppLocalKey.configUserToken);
//   set userToken(String? val) => boxConfig.write(AppLocalKey.configUserToken, val);
//   // System Logged In
//   bool? get isLoggedIn => boxConfig.read(AppLocalKey.configUserLoggedIn);
//   set isLoggedIn(bool? val) => boxConfig.write(AppLocalKey.configUserLoggedIn, val);

//   // User Data
//   String? get userAddress => box.read(AppLocalKey.userAddress);
//   set userAddress(String? val) => box.write(AppLocalKey.userAddress, val);

//   String? get userName => box.read(AppLocalKey.userName);
//   set userName(String? val) => box.write(AppLocalKey.userName, val);

//   String? get userEmail => box.read(AppLocalKey.userEmail);
//   set userEmail(String? val) => box.write(AppLocalKey.userEmail, val);

//   int? get userRewards => box.read(AppLocalKey.userRewards);
//   set userRewards(int? val) => box.write(AppLocalKey.userRewards, val);

//   String? get userLastName => box.read(AppLocalKey.userLastName);
//   set userLastName(String? val) => box.write(AppLocalKey.userLastName, val);

//   String? get userFirstName => box.read(AppLocalKey.userFirstName);
//   set userFirstName(String? val) => box.write(AppLocalKey.userFirstName, val);

//   int? get userAge => box.read(AppLocalKey.userAge);
//   set userAge(int? val) => box.write(AppLocalKey.userAge, val);

//   String? get userProfileImg => box.read(AppLocalKey.userProfileImg);
//   set userProfileImg(String? val) => box.write(AppLocalKey.userProfileImg, val);

//   String? get userBirthDate => box.read(AppLocalKey.userBirthDate);
//   set userBirthDate(String? val) => box.write(AppLocalKey.userBirthDate, val);

//   String? get userMarriageDate => box.read(AppLocalKey.userMarriageDate);
//   set userMarriageDate(String? val) => box.write(AppLocalKey.userMarriageDate, val);

//   String? get userGender => box.read(AppLocalKey.userGender);
//   set userGender(String? val) => box.write(AppLocalKey.userGender, val);
//   // End User Data
// }
