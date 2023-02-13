import 'package:flutter/material.dart';
import 'package:flutter_getx/src/pages/reactive_state_manage_page.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("라우트 관리 홈"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Get.to(const ReactiveStateManagePage());
                },
                child: const Text("반응형 상태 관리"),
            ),
          ]
        )
      )
    );
  }
}