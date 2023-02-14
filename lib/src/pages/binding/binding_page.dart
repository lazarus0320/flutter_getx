import 'package:flutter_getx/src/controller/count_controller_with_reactive.dart';
import 'package:get/get.dart';

class BindingPageBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(CountControllerWithReactive());
  }
}