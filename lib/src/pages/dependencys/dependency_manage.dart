import 'package:flutter/material.dart';
import 'package:flutter_getx/src/pages/dependencys/get_lazyput.dart';
import 'package:flutter_getx/src/pages/dependencys/get_put.dart';
import 'package:get/get.dart';
import '../../controller/dependency_controller.dart';

class DependencyManagePage extends StatelessWidget {
  const DependencyManagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("의존성 주입"),
        ),
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          ElevatedButton(
            onPressed: () {
              Get.to(
                () => const GetPut(),
                binding: BindingsBuilder(() {
                  // 필요한 의존성들을 어떤 식으로 주입할 것인지 정의를 내리는 부분.
                  Get.put(
                      DependencyController()); // 바인딩 : 페이지를 보내주면서(페이지 라우트 단계에서) 사용할 controller를 주입하는 방법// 지난번에는 넘어간 페이지에서 Get.put을 했었다.
                }),
              );
            },
            child: const Text("Getput"),
          ),
          ElevatedButton(
              onPressed: () {
                Get.to(
                  () => const GetLazyPut(),
                  binding: BindingsBuilder(() {
                    // 필요한 의존성들을 어떤 식으로 주입할 것인지 정의를 내리는 부분.
                    Get.lazyPut<DependencyController>(() =>
                        DependencyController()); // 바인딩 : 페이지를 보내주면서(페이지 라우트 단계에서) 사용할 controller를 주입하는 방법// 지난번에는 넘어간 페이지에서 Get.put을 했었다.
                  }),
                );
              },
              child: const Text("Get.lazyPut")),
          ElevatedButton(
              onPressed: () {
                Get.to(
                  () => const GetPut(),
                  binding: BindingsBuilder(() {
                    Get.putAsync<DependencyController>(() async {
                      await Future.delayed(const Duration(seconds: 5));
                      return DependencyController();
                    });
                  }),
                );
              },
              child: const Text("Get.putAsync")),
          ElevatedButton(
              onPressed: () {
                Get.to(
                  () => const GetPut(),
                  binding: BindingsBuilder(() {
                    Get.create<DependencyController>(
                        () => DependencyController());
                  }),
                );
              },
              child: const Text("create")
          ),
        ])));
  }
}
