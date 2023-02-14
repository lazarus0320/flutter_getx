import 'package:flutter/material.dart';
import 'package:flutter_getx/src/controller/count_controller_with_reactive.dart';
import 'package:get/get.dart';

class BindingPage extends GetView<CountControllerWithReactive> {
  const BindingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Obx(
              () => Text(
                controller.count.toString(),
                style: const TextStyle(fontSize: 40),
              ),
          ),
          ElevatedButton(
              onPressed: () {
                controller.increase();
              },
              child: null
          ),
        ]
      )
    );
  }
}