import 'package:flutter/material.dart';
import 'package:flutter_getx/src/controller/count_controller_with_reactive.dart';
import 'package:get/get.dart';

class WithGetX extends StatelessWidget {
  WithGetX({Key? key}) : super(key: key);
  final CountControllerWithGetx _countControllerWithGetx = Get.put(CountControllerWithGetx());

  Widget _button(String id) {
    return ElevatedButton(
      child: const Text("+", style: TextStyle(fontSize: 30)),
      onPressed: () {
        _countControllerWithGetx.increase(id);
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("GetX", style: TextStyle(fontSize: 30)),
          GetBuilder<CountControllerWithGetx>(
            id: "first",
            builder: (controller) {
            return Text("${controller.count}",
                style: const TextStyle(fontSize: 50));
              },
          ),
          GetBuilder<CountControllerWithGetx>(
            id: "second",
            builder: (controller) {
              return Text("${controller.count}",
                  style: const TextStyle(fontSize: 50));
            },
          ),
          _button("first"),
          _button("second"),

        ],
      ),
    );
  }
}