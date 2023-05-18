import 'package:get/get.dart';

class CallController extends GetxController {
  var ringCheck = false.obs;

  @override
  void onInit() {
    Future.delayed(Duration(seconds: 3), () => ringCheck.value = true);
    super.onInit();
  }
}
