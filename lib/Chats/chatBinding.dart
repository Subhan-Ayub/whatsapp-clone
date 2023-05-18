import 'package:get/get.dart';
import 'package:routting/Chats/chartcontroller.dart';

class ChatsBinds extends Bindings{
    @override
  void dependencies() {
    Get.lazyPut<ChatController>(() => ChatController());
  }
}