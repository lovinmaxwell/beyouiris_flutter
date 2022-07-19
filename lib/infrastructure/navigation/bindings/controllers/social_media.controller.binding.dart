import 'package:get/get.dart';

import '../../../../presentation/social_media/controllers/social_media.controller.dart';

class SocialMediaControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SocialMediaController>(
      () => SocialMediaController(),
    );
  }
}
