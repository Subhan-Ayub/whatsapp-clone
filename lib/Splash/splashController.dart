import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    // print('ddd');
    Future.delayed(Duration(seconds: 2), () => Get.offAndToNamed('/'));
    super.onInit();
  }
}