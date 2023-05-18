import 'package:get/get.dart';
import 'package:routting/Calls/callController.dart';

class CallBinds extends Bindings{
    @override
  void dependencies() {
    Get.lazyPut<CallController>(() => CallController());
  }
}