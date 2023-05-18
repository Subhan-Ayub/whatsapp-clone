import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../data.dart';

class StatusPage extends StatelessWidget {
  var date = DateTime.now();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
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
        // actions: [
        //   // Icon(Icons.camera_alt_outlined,
        //   //     color: Color.fromARGB(255, 90, 153, 204)),
        //   // Icon(Icons.open_in_new, color: Color.fromARGB(255, 90, 153, 204))
        //   //     .marginOnly(left: 20, right: 10)
        //   Image.asset(
        //     'assets/camera.png',
        //     width: 80,
        //   ).marginOnly(bottom: 10, right: 15),
        //   // Container(
        //   //   child: Image.asset("assets/camera.png"),
        //   // )
        // ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Text(
                'Status',
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
                    ).marginOnly(left: 17, right: 17).paddingOnly(top: 10),
                  )),
                ],
              ),
            ),
            Container(
              color: Color.fromARGB(55, 158, 158, 158),
              child: Row(
                children: [
                  Container(
                      height: 55,
                      width: Get.width / 7,
                      // color: Colors.red,
                      child: Container(
                        // height: 30,
                        // width: 20,
                        // color: Colors.amber,
                        child: ClipRRect(
                          child: Image.asset(
                            'assets/two.jpg',
                            height: 10,
                            width: 10,
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(50),
                        ),
                      )).marginSymmetric(horizontal: 5).marginOnly(left: 10),
                  Expanded(
                      child: InkWell(
                    child: Container(
                        height: 85,
                        width: Get.width,
                        // color: Colors.amber,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'My Status',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white),
                                ).marginOnly(bottom: 5),
                                Text(
                                  'Add to my status',
                                  style: TextStyle(
                                      color: Color.fromARGB(103, 255, 255, 255),
                                      fontSize: 11),
                                )
                              ],
                            ).marginOnly(left: 5),
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: Color.fromARGB(17, 255, 255, 255)),
                                  child: Icon(
                                    Icons.camera_alt,
                                    color: Color.fromARGB(255, 90, 153, 204),
                                    size: 22,
                                  ).marginAll(7),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: Color.fromARGB(17, 255, 255, 255)),
                                  child: Icon(
                                    Icons.create,
                                    color: Color.fromARGB(255, 90, 153, 204),
                                    size: 22,
                                  ).marginAll(7),
                                ).marginOnly(left: 15)
                              ],
                            ).marginOnly(right: 20)
                          ],
                        )),
                  ))
                ],
              ),
            ).marginOnly(top: 50),
            Text(
              'RECENTS UPDATED',
              style: TextStyle(
                  color: Color.fromARGB(103, 255, 255, 255), fontSize: 11),
            ).marginOnly(left: 20, top: 30, bottom: 8),
            Container(
              color: Color.fromARGB(55, 158, 158, 158),
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: array.length,
                shrinkWrap: true,
                itemBuilder: ((BuildContext context, i) {
                  return array[i]["check"]
                      ? Row(
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
                                                      color: Color.fromARGB(
                                                          255, 0, 0, 0),
                                                      width: 2.5),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          30)),
                                          // color: Colors.amber,
                                          child: ClipRRect(
                                            child: Image.network(
                                              '${array[i]["dp"]}',
                                              height: 10,
                                              width: 10,
                                              fit: BoxFit.cover,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(50),
                                          ).marginAll(2.5),
                                        ))
                                    .marginSymmetric(horizontal: 5)
                                    .marginOnly(left: 10)),
                            Expanded(
                                child: InkWell(
                              onTap: () => Get.toNamed('/status'),
                              child: Container(
                                height: 90,
                                width: Get.width,
                                // color: Colors.amber,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '${array[i]["name"]}',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white),
                                    ).marginOnly(top: 25),
                                    Text(
                                      '${date.minute}m Ago',
                                      style: TextStyle(
                                          color: Color.fromARGB(
                                              166, 255, 255, 255),
                                          fontSize: 11),
                                    ).marginOnly(bottom: 10, top: 6),
                                    Divider(
                                      color: Color.fromARGB(83, 100, 100, 100),
                                      thickness: 1,
                                    )
                                  ],
                                ).marginOnly(left: 5),
                              ),
                            ))
                          ],
                        )
                      : Container();
                }),
              ),
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
            icon: Image.asset(
              'assets/status.png',
              // width: 100,
              // height: 100,
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
