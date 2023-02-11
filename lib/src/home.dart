import 'package:flutter/material.dart';
import 'package:flutter_getx/src/pages/normal/first.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("라우트 관리 홈"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Get.to(() => const FirstPage());
                },
                child: Text("일반적인 라우트"),
            )
          ]
        )
      )
    );
  }
}