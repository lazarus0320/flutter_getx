import 'package:get/get.dart';


class CountControllerWithReactive extends GetxController {
  static CountControllerWithReactive get to => Get.find();
  RxInt count = 0.obs;  // 반응형으로 필드값을 관리할 수 있음.

  void increase() {
    count++;
  }
  void putNumber(int value){
    count(value);
  }
}