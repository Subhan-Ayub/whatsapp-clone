import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:async';

import 'package:get/get.dart';
import 'package:routting/Chats/chartcontroller.dart';
import 'package:routting/data.dart';

class Chats extends StatelessWidget {
  ChatController c = Get.find<ChatController>();
  String dp = Get.arguments['dp'];
  String name = Get.arguments['name'];
  var date = DateTime.now();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
          height: Get.height,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    'assets/aaa.jpg',
                  ),
                  fit: BoxFit.cover)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 90,
                decoration:
                    BoxDecoration(color: Color.fromARGB(255, 29, 29, 29)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          InkWell(
                            child: Icon(
                              Icons.chevron_left,
                              color: Color.fromARGB(255, 90, 153, 204),
                              size: 40,
                            ),
                            onTap: () => Get.back(),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              right: 10,
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Image.network(
                                dp,
                                fit: BoxFit.cover,
                                width: 40,
                                height: 40,
                              ),
                            ),
                          ),
                          Text(
                            name,
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Icon(
                            Icons.videocam_rounded,
                            size: 32,
                            color: Color.fromARGB(255, 90, 153, 204),
                          ),
                          InkWell(
                            onTap: () => Get.toNamed('/call',
                                arguments: {'dp': dp, 'name': name}),
                            child: Icon(
                              Icons.local_phone_outlined,
                              color: Color.fromARGB(255, 90, 153, 204),
                            ).marginOnly(right: 25, left: 20),
                          )
                        ],
                      ),
                    )
                  ],
                ).marginOnly(top: 30),
              ),
              Expanded(
                  child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      child: Text(
                        '15 Jul 2022',
                        style: TextStyle(
                            fontSize: 12,
                            color: Color.fromARGB(150, 255, 255, 255)),
                      ).paddingSymmetric(horizontal: 10, vertical: 3),
                      decoration: BoxDecoration(
                          color: Color.fromARGB(40, 158, 158, 158),
                          borderRadius: BorderRadius.circular(10)),
                    ).marginOnly(top: 40, bottom: 20),
                    Container(
                      width: 350,
                      child: Text(
                        "Messages and calls are end-to-end encrypted.\n No one outside of this chat, not even WhatsApp, can read or listen to them. Tap to learn more.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color.fromARGB(183, 207, 187, 0),
                            fontSize: 12),
                      ).paddingSymmetric(horizontal: 10, vertical: 5),
                      decoration: BoxDecoration(
                          color: Color.fromARGB(40, 158, 158, 158),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    Obx(() {
                      return ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: c.array.length,
                          itemBuilder: ((BuildContext context, index) {
                            return Column(
                                // textBaseline: TextBaseline.alphabetic,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                // mainAxisAlignment: MainAxisAlignment.end,
                                // mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    // alignment: Alignment.centerLeft,
                                    width: 200,
                                    // height: 10,
                                    // constraints: BoxConstraints(
                                    //   maxWidth: double.infinity,
                                    // ),

                                    child: Container(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            '${c.array[index]}',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                            textAlign: TextAlign.start,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Text(
                                                '${date.hour}:${date.minute} PM',
                                                style: TextStyle(
                                                    color: Color.fromARGB(
                                                        150, 255, 255, 255),
                                                    fontSize: 11),
                                              ).paddingSymmetric(horizontal: 3),
                                              Icon(
                                                Icons.done_all,
                                                size: 15,
                                                color: Color.fromARGB(
                                                    123, 255, 255, 255),
                                              )
                                            ],
                                          )
                                        ],
                                      ).marginSymmetric(
                                          horizontal: 15, vertical: 6),
                                      decoration: BoxDecoration(
                                          color: Color.fromARGB(255, 0, 56, 42),
                                          borderRadius:
                                              BorderRadius.circular(13)),
                                    ).marginOnly(bottom: 6, right: 10),
                                  )
                                ]);
                          }));
                    }).marginOnly(top: 20)
                  ],
                ),
              )),
              Container(
                height: 70,
                color: Color.fromARGB(255, 29, 29, 29),
                child: Row(
                  children: [
                    Icon(
                      Icons.add,
                      color: Color.fromARGB(255, 90, 153, 204),
                      size: 35,
                    ).marginSymmetric(horizontal: 5),
                    Expanded(
                        child: SizedBox(
                      height: 34,
                      width: Get.width / 1.5,
                      child: TextField(
                          onChanged: (s) {
                            // c.e.text = c.e.text;
                            if (c.e.text == '') {
                              c.isCheck.value = true;
                            } else {
                              c.isCheck.value = false;
                            }
                            c.update();
                          },
                          controller: c.e,
                          // textAlign: TextAlign.start,
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Color.fromARGB(19, 247, 247, 247),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: BorderSide(
                                      width: 0.4,
                                      color:
                                          Color.fromARGB(47, 255, 255, 255))),
                              suffixIcon: Icon(
                                Icons.notes_outlined,
                                color: Color.fromARGB(255, 90, 153, 204),
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 0.4,
                                      color: Color.fromARGB(47, 255, 255, 255)),
                                  borderRadius: BorderRadius.circular(30)))),
                    )),
                    Obx(() {
                      return c.isCheck.value
                          ? Container(
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/camra.png',
                                    width: 45,
                                    fit: BoxFit.cover,
                                    height: 30,
                                  ).marginOnly(left: 9),
                                  Icon(
                                    Icons.mic,
                                    color: Color.fromARGB(255, 90, 153, 204),
                                    size: 30,
                                  )
                                ],
                              ),
                            )
                          : Container(
                              // ignore: sort_child_properties_last
                              child: InkWell(
                                child: Icon(
                                  Icons.send,
                                  size: 20,
                                  color: Color.fromARGB(255, 255, 255, 255),
                                ),
                                onTap: () {
                                  c.array.add(c.e.text);

                                  c.update();

                                  c.e.clear();
                                  c.isCheck.value = true;
                                  // print(c.array);
                                },
                              ),
                              height: 33,
                              width: 33,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 90, 153, 204),
                                  borderRadius: BorderRadius.circular(50)),
                            ).marginSymmetric(horizontal: 10);
                    })
                  ],
                ).marginOnly(bottom: 15),
              )
            ],
          )),
    );
  }
}
