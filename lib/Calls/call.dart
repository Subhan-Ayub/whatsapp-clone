import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:async';
import 'package:get/get.dart';
import 'package:routting/Calls/callController.dart';
import 'package:routting/Chats/chartcontroller.dart';
import 'package:routting/data.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
// import 'package:animated_widgets/animated_widgets.dart';
// import '../widget/panel_widget.dart';

class Call extends StatelessWidget {
  String dp = Get.arguments['dp'];
  String name = Get.arguments['name'];
  CallController c = Get.find<CallController>();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var call_end_rounded = Icons.call_end_rounded;
    return Scaffold(
      body: SlidingUpPanel(
        color: Color.fromARGB(242, 29, 29, 29),
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        minHeight: Get.height / 7,
        maxHeight: Get.height / 2,
        panel: Column(
          children: [
            Icon(Icons.keyboard_arrow_up_rounded,
                size: 40, color: Color.fromARGB(31, 255, 255, 255)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Color.fromARGB(31, 255, 255, 255)),
                  child: Icon(
                    Icons.volume_up_rounded,
                    color: Colors.white,
                    size: 33,
                  ),
                ),
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Color.fromARGB(31, 255, 255, 255)),
                  child: Icon(
                    Icons.videocam_rounded,
                    color: Color.fromARGB(90, 255, 255, 255),
                    size: 33,
                  ),
                ),
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Color.fromARGB(31, 255, 255, 255)),
                  child: Icon(
                    Icons.mic_off_rounded,
                    color: Colors.white,
                    size: 33,
                  ),
                ),
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Color.fromARGB(235, 255, 56, 56)),
                  child: InkWell(
                    child: Icon(
                      call_end_rounded,
                      color: Colors.white,
                      size: 33,
                    ),
                    onTap: () => Get.back(),
                  ),
                )
              ],
            ).paddingSymmetric(horizontal: 18),
            Divider(
              color: Color.fromARGB(31, 255, 255, 255),
              height: 75,
            ),
            Row(
              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Color.fromARGB(31, 255, 255, 255)),
                  child: Icon(
                    Icons.person_add_alt_1_rounded,
                    color: Colors.white,
                    size: 25,
                  ),
                ).marginOnly(left: 18),
                Text(
                  'Add Participant',
                  style: TextStyle(color: Colors.white),
                ).marginOnly(left: 10)
              ],
            )
          ],
        ),
        body: Container(
          height: Get.height,
          width: Get.width,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    'assets/aaa.jpg',
                  ),
                  fit: BoxFit.cover)),
          child: Column(
            children: [
              Row(
                children: [
                  InkWell(
                    child: Icon(
                      Icons.chevron_left,
                      color: Color.fromARGB(255, 255, 255, 255),
                      size: 40,
                    ),
                    onTap: () => Get.back(),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.lock,
                        color: Colors.white,
                        size: 14,
                      ).marginOnly(right: 5),
                      Text(
                        'End-to-end Encrypted',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ],
                  ).marginOnly(left: 100)
                ],
              ).marginOnly(top: 50),
              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.network(
                  dp,
                  fit: BoxFit.cover,
                  width: 110,
                  height: 110,
                ),
              ).marginOnly(top: 20, bottom: 15),
              Text(
                name,
                style: TextStyle(
                    fontSize: 28,
                    color: Colors.white,
                    fontWeight: FontWeight.w500),
              ),
              Obx(() {
                return c.ringCheck.value
                    ? Text(
                        'ringing +92 345 97488...',
                        style: TextStyle(
                            fontSize: 20,
                            color: Color.fromARGB(255, 143, 143, 143),
                            fontWeight: FontWeight.w400),
                      ).marginOnly(top: 5)
                    : Text(
                        'calling +92 345 97488...',
                        style: TextStyle(
                            fontSize: 20,
                            color: Color.fromARGB(255, 143, 143, 143),
                            fontWeight: FontWeight.w400),
                      ).marginOnly(top: 5);
              })
            ],
          ),
        ),
      ),
    );
  }
}
