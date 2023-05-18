import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class ChatController extends GetxController {
  var isCheck = true.obs;
  var iss = ''.obs;
  void initState() {
    if (e.text == '') {
      isCheck.value = true;
    } else {
      isCheck.value = false;
    }
  }


  // setState((){});
  TextEditingController e = TextEditingController();
  // ChatController c = Get.put(ChatController());
  RxList<dynamic> array = [].obs;
}
