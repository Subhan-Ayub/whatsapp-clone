import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get.dart';
import 'package:routting/Splash/splashController.dart';



class Splash extends StatelessWidget {
  SplashController c = Get.find<SplashController>();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
          child: Icon(
        Icons.whatsapp_outlined,
        size: 100,
        color: Colors.white,
      )),
      backgroundColor: Colors.black,
    );
  }
}
