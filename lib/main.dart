import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:routting/Calls/call.dart';
import 'package:routting/Calls/callBinds.dart';
import 'package:routting/Chats/charts.dart';
import 'package:routting/Chats/chatBinding.dart';
import 'package:routting/Chats/chatsPages.dart';
import 'package:routting/Splash/splash.dart';
import 'package:routting/Splash/splashBinds.dart';
import 'package:routting/Status/statusPage.dart';
import 'Status/status.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
   
        debugShowCheckedModeBanner: false,
        initialRoute: '/splash',
        getPages: [
           GetPage(name: "/splash", page: () => Splash(),binding: SplashBinds()),
          GetPage(name: "/", page: () => MyDemoPage()),
          GetPage(
            name: "/status",
            page: () => Status(),
            transition: Transition.rightToLeft,
            transitionDuration: const Duration(milliseconds: 400),
            curve: Curves.fastOutSlowIn,
          ),
          GetPage(
            name: "/chat",
            binding: ChatsBinds(),
            page: () => Chats(),
            transition: Transition.rightToLeft,
            transitionDuration: const Duration(milliseconds: 400),
            curve: Curves.fastOutSlowIn,
          ),
          GetPage(
            name: "/statusPage",
         
            page: () => StatusPage(),
            transition: Transition.rightToLeft,
            transitionDuration: const Duration(milliseconds: 400),
            curve: Curves.fastOutSlowIn,
          ),   GetPage(
            name: "/call",
            binding: CallBinds(),
          
            page: () => Call(),

            transition: Transition.rightToLeft,
            transitionDuration: const Duration(milliseconds: 400),
            curve: Curves.fastOutSlowIn,
          )
        ]);
  }
}
