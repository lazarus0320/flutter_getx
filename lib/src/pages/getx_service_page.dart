import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getx/src/controller/getx_service_test.dart';
import 'package:get/get.dart';

class GetxServiceWidget extends GetView<GetxServiceTest>{
  const GetxServiceWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
                () => Text(
                  controller.count.value.toString(),
                  style: const TextStyle(fontSize: 50),
                ),
            ),
            ElevatedButton(
                onPressed: () {
                  controller.increase();
                },
                child: const Text("Increase"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.reset(); // 모든 Get 인스턴스를 초기화
              },
              child: const Text("Clear"),
            ),
          ],
        )
      )
    );
  }
}