import 'package:get/get.dart';

import '../controllers/simple_splash_controller.dart';

class SimpleSplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SimpleSplashController>(
      () => SimpleSplashController(),
    );
  }
}
