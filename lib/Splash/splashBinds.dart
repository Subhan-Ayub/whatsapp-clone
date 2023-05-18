import 'package:get/get.dart';
import 'package:routting/Chats/chartcontroller.dart';
import 'package:routting/Splash/splashController.dart';


class SplashBinds extends Bindings{
    @override
  void dependencies() {
    Get.lazyPut<SplashController>(() => SplashController());
  }
}