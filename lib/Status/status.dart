import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Status extends StatelessWidget {
  // const Second({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/statuss.jpg'), fit: BoxFit.cover)),
      height: Get.height,
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 2.0, sigmaY: 3.0),
        child: Container(
          color: Color.fromARGB(255, 0, 0, 0).withOpacity(0.7),
          alignment: Alignment.center,
          child: Column(
            children: [
              Container(
                width: Get.width,
                height: Get.height,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Column(children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              height: 4,
                              width: Get.width / 3 - 10,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(244, 224, 224, 224),
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            Container(
                              height: 4,
                              width: Get.width / 3 - 10,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(244, 112, 112, 112),
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            Container(
                              height: 4,
                              width: Get.width / 3 - 10,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(244, 112, 112, 112),
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                          ],
                        ).marginSymmetric(horizontal: 7),
                        Row(
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  InkWell(
                                    child: Icon(
                                      Icons.chevron_left,
                                      color: Colors.white,
                                      size: 40,
                                    ),
                                    onTap: () => Get.back(),
                                  ),
                                  ClipRRect(
                                    child: Image.asset(
                                      'assets/three.jpg',
                                      height: 45,
                                      width: 45,
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: BorderRadius.circular(200),
                                  ),
                                  Column(
                                    // mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        'fahad',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 14),
                                        textAlign: TextAlign.left,
                                      ),
                                      Text(
                                        '4:19 AM',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 14),
                                      ),
                                    ],
                                  ).marginOnly(left: 5)
                                ],
                              ),
                            )
                          ],
                        ).marginOnly(top: 12)
                      ]),
                    ),
                    Image.asset(
                      'assets/loader.gif',
                      height: 250,
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.heart_broken,
                          color: Colors.red,
                          size: 35,
                        ),
                        Divider(
                          color: Color.fromARGB(82, 255, 255, 255),
                          thickness: 1,
                          indent: 30,
                          endIndent: 30,
                        ),
                        Column(
                          children: [
                            Icon(
                              Icons.keyboard_arrow_up,
                              color: Colors.white,
                              size: 35,
                            ),
                            Text(
                              'Reply',
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ).marginSymmetric(vertical: 30),
              )
            ],
          ),
        ),
      ),
    ));
  }
}




              // onPressed: () => Get.back(),
