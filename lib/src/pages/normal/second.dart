import 'package:flutter/material.dart';
import 'package:flutter_getx/src/pages/normal/first.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../home.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Second Page"),
        ),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Get.back();
                    },
                    child: Text("뒤로 이동"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Get.offAll(() => const Home());
                    },
                    child: Text("홈으로 이동"),
                  )
                ]
            )
        )
    );
  }
}