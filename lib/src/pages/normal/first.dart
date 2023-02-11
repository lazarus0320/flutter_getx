import 'package:flutter/material.dart';
import 'package:flutter_getx/src/pages/normal/second.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Page"),
      ),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Get.to(() => const SecondPage());
                    },
                    child: Text("다음페이지 이동"),
                  )
                ]
            )
        )
    );
  }
}