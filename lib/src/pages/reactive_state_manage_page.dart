import 'package:flutter/material.dart';
import 'package:flutter_getx/src/controller/count_controller_with_reactive.dart';
import 'package:get/get.dart';

class ReactiveStateManagePage extends StatelessWidget {
  const ReactiveStateManagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(CountControllerWithReactive());
    return Scaffold(appBar: AppBar(
      title: const Text("반응형 상태 관리"),
    ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("GetX", style: TextStyle(fontSize: 30)),
            Obx(() => Text("${Get.find<CountControllerWithReactive>().count.value}",
                /* controller에서 선언한 obs의 변화를 감지했을 때 바로 Obx로 날려주는 기능을 함.
                다만 obs로 선언했던 값을 Obx로 넣어주지 않으면 에러가 발생하므로 반드시 넣어주도록 주의할 것.
                 */
                style: const TextStyle(fontSize: 50))),
            ElevatedButton(
              child: const Text("+", style: TextStyle(fontSize: 30)),
              onPressed: () {
                Get.find<CountControllerWithReactive>().increase();
              },
            ),
            ElevatedButton(
              child: const Text("5로 변경", style: TextStyle(fontSize: 30)),
              onPressed: () {
                Get.find<CountControllerWithReactive>().putNumber(5);
              },
            ),
          ]
        )
      )
    );
  }
}