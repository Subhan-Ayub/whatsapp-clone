import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:routting/Chats/charts.dart';
import 'package:routting/Chats/chatBinding.dart';
import 'package:routting/Splash/splash.dart';
import 'package:routting/Status/statusPage.dart';
import '../Status/status.dart';
import '../homePage.dart';
import '../data.dart';


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
// import 'Status/status.dart';


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





class MyDemoPage extends StatelessWidget {
  // const MyHomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          "Edit",
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: Color.fromARGB(255, 90, 153, 204)),
        ),
        backgroundColor: Colors.black,
        actions: [
          // Icon(Icons.camera_alt_outlined,
          //     color: Color.fromARGB(255, 90, 153, 204)),
          // Icon(Icons.open_in_new, color: Color.fromARGB(255, 90, 153, 204))
          //     .marginOnly(left: 20, right: 10)
          Image.asset(
            'assets/camera.png',
            width: 80,
          ).marginOnly(bottom: 10, right: 15),
          // Container(
          //   child: Image.asset("assets/camera.png"),
          // )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Text(
                'Chats',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w800),
              ).paddingOnly(left: 17),
              color: Colors.black,
              width: Get.width,
            ),
            Container(
              child: Row(
                children: [
                  Expanded(

                      // width: Get.width / 2,

                      child: SizedBox(
                    height: 45,

                    // width: Get.width / 2,
                    child: TextField(
                      textAlign: TextAlign.left,
                      decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.search,
                            color: Color.fromARGB(123, 255, 255, 255),
                          ).marginOnly(right: 10),
                          labelText: 'Search',
                          labelStyle: TextStyle(
                              color: Color.fromARGB(123, 255, 255, 255)),
                          filled: true,
                          fillColor: Color.fromARGB(55, 158, 158, 158),

                          // label: 'sss',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(width: 2))),
                    ).marginOnly(left: 17).paddingOnly(top: 10),
                  )),
                  Icon(
                    Icons.filter_list,
                    size: 20,
                    color: Color.fromARGB(255, 90, 117, 204),
                  ).marginSymmetric(horizontal: 12).marginOnly(top: 6, right: 5)
                ],
              ),
            ),
            Container(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // marginSymmetric(horizontal: 10),
                    Text(
                      'Broadcast List',
                      style:
                          TextStyle(color: Color.fromARGB(255, 90, 153, 204)),
                    ),
                    Text('New Group',
                        style:
                            TextStyle(color: Color.fromARGB(255, 90, 153, 204)))
                  ]).marginSymmetric(horizontal: 17).marginOnly(top: 25),
            ),
            Divider(
              thickness: 1,
              // indent: 10,
              // endIndent: 20,
              color: Color.fromARGB(83, 100, 100, 100),
              height: 20,
            ),
            Row(
              children: [
                Container(
                        height: 55,
                        width: Get.width / 7,
                        // color: Colors.red,
                        child: Container(
                            // height: 30,
                            // width: 20,
                            // color: Colors.amber,
                            child: Icon(
                          Icons.archive,
                          color: Color.fromARGB(166, 255, 255, 255),
                        ).marginOnly(bottom: 20)))
                    .marginSymmetric(horizontal: 5)
                    .marginOnly(left: 10),
                Expanded(
                    child: Container(
                  height: 55,
                  width: Get.width,
                  // color: Colors.amber,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // ignore: prefer_const_constructors
                          Center(
                            child: Text(
                              'Archived',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white),
                            ),
                          )
                        ],
                      ).marginOnly(top: 10),
                      Divider(
                        color: Color.fromARGB(83, 100, 100, 100),
                        thickness: 1,
                      )
                    ],
                  ).marginOnly(left: 5),
                ))
              ],
            ),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemCount: array.length,
              shrinkWrap: true,
              itemBuilder: ((BuildContext context, i) {
                return Row(
                  children: [
                    InkWell(
                        onTap: array[i]["check"]
                            ? () => Get.toNamed('/status')
                            : () {},
                        child: Container(
                                height: 60,
                                width: Get.width / 7,
                                // color: Colors.red,
                                child: Container(
                                  // height: 30,
                                  // width: 20,

                                  decoration: array[i]["check"]
                                      ? BoxDecoration(
                                          border: Border.all(
                                              color: Color.fromARGB(
                                                  255, 90, 153, 204),
                                              width: 2.5),
                                          borderRadius:
                                              BorderRadius.circular(30))
                                      : BoxDecoration(
                                          border: Border.all(
                                              color:
                                                  Color.fromARGB(255, 0, 0, 0),
                                              width: 2.5),
                                          borderRadius:
                                              BorderRadius.circular(30)),
                                  // color: Colors.amber,
                                  child: ClipRRect(
                                    child: Image.network(
                                      '${array[i]["dp"]}',
                                      height: 10,
                                      width: 10,
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: BorderRadius.circular(50),
                                  ).marginAll(2.5),
                                ))
                            .marginSymmetric(horizontal: 5)
                            .marginOnly(left: 10)),
                    Expanded(
                        child: InkWell(
                      onTap: () => Get.toNamed("/chat", arguments: {
                        'name': array[i]["name"],
                        'dp': array[i]["dp"]
                      }),
                      child: Container(
                        height: 85,
                        width: Get.width,
                        // color: Colors.amber,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '${array[i]["name"]}',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white),
                                ),
                                Text(' 2:45 PM',
                                        style: TextStyle(
                                            // fontWeight: FontWeight.w300,
                                            color: Color.fromARGB(
                                                166, 255, 255, 255),
                                            fontSize: 11))
                                    .marginOnly(right: 20)
                              ],
                            ).marginOnly(top: 10),
                            Row(
                              children: [
                                Icon(
                                  Icons.done_all,
                                  color: array[i]["readCheck"]
                                      ? Color.fromARGB(255, 90, 153, 204)
                                      : Color.fromARGB(166, 255, 255, 255),
                                  size: 15,
                                ).marginOnly(right: 2, bottom: 10),
                                Text(
                                  'Subha time se aa jai yr',
                                  style: TextStyle(
                                      color: Color.fromARGB(166, 255, 255, 255),
                                      fontSize: 11),
                                ).marginOnly(bottom: 10),
                              ],
                            ),
                            Divider(
                              color: Color.fromARGB(83, 100, 100, 100),
                              thickness: 1,
                            )
                          ],
                        ).marginOnly(left: 5),
                      ),
                    ))
                  ],
                );
              }),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color.fromARGB(255, 29, 29, 29),
        // ignore: prefer_const_literals_to_create_immutables
        fixedColor: Color.fromARGB(69, 255, 255, 255),
        unselectedItemColor: Color.fromARGB(69, 255, 255, 255),
        // selectedItemColor: Color.fromARGB(255, 90, 153, 204),

        items: [
          BottomNavigationBarItem(
            label: "Status",
            icon: InkWell(
              onTap: () => Get.offAndToNamed("/statusPage"),
              child: Image.asset(
                'assets/status.png',
                // width: 100,
                // height: 100,
              ),
            ),
          ),
          BottomNavigationBarItem(
            label: "Calls",
            icon: Icon(
              Icons.local_phone_outlined,
              color: Color.fromARGB(87, 255, 255, 255),
            ),
          ),
          BottomNavigationBarItem(
            label: "Community",
            icon: Image.asset('assets/cumunity.png'),
          ),
          BottomNavigationBarItem(
            label: "Chats",
            icon: InkWell(
              onTap: () => Get.offAndToNamed('/'),
              child: Image.asset('assets/chats.png'),
            ),
          ),
          BottomNavigationBarItem(
            label: "Setting",
            icon: Image.asset('assets/setting.png'),
          ),
        ],
      ),
    );
  }
}
