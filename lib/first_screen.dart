import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/homecontroller.dart';

class Firstscreen extends StatefulWidget {
  const Firstscreen({Key? key}) : super(key: key);

  @override
  State<Firstscreen> createState() => _FirstscreenState();
}

class _FirstscreenState extends State<Firstscreen> {
  var homecontroller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Getx"),
          actions: [IconButton(onPressed: (){
            homecontroller.reset();
          }, icon: Icon(Icons.lock_reset))
          ],
        ),
        body: Center(
          child: Column(
            children: [
              GetBuilder(
                init: HomeController(),
                builder: (controller) {
                  return Text(
                    "${homecontroller.i}",
                    style: TextStyle(fontSize: 50),
                  );
                },
              ),
              ElevatedButton(
                onPressed: () {
                  homecontroller.add();
                },
                child: Text("+"),
              ),
              SizedBox(
                height: 5,
              ),
              ElevatedButton(
                onPressed: () {
                  homecontroller.minus();
                },
                child: Text("--"),
              ),
              SizedBox(
                height: 5,
              ),
              ElevatedButton(
                onPressed: () {
                  homecontroller.x2();
                },
                child: Text("X2"),
              ),
              SizedBox(
                height: 5,
              ),
              ElevatedButton(
                onPressed: () {
                  homecontroller.x4();
                },
                child: Text("X4"),
              ),
              SizedBox(
                height: 5,
              ),
              ElevatedButton(
                onPressed: () {
                  homecontroller.x6();
                },
                child: Text("X6"),
              ),SizedBox(
                height: 5,
              ),
              ElevatedButton(
                onPressed: () {
                  homecontroller.x8();
                },
                child: Text("X8"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
