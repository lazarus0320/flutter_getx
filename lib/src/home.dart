import 'package:flutter/material.dart';
import 'package:flutter_getx/src/pages/getx_service_page.dart';
import 'package:get/get.dart';

import 'controller/getx_service_test.dart';

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
                  Get.to(
                      () => const GetxServiceWidget(),
                    binding: BindingsBuilder(() {
                      Get.lazyPut<GetxServiceTest>(() => GetxServiceTest());
                      fenix: true;
                    }),
                  );
                },
                child: const Text("GetxService"),
            ),
          ]
        )
      )
    );
  }
}