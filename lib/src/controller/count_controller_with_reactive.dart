import 'package:get/get.dart';

enum NUM { FIRST, SECOND }
class User{
  String? name;
  int? age;
  User({this.name, this.age});
}

class CountControllerWithReactive extends GetxController {
  RxInt count = 0.obs;  // 반응형으로 필드값을 관리할 수 있음.
  RxDouble _double = 0.0.obs;
  RxString strValue = "".obs;
  Rx<NUM> nums = NUM.FIRST.obs;
  Rx<User> user = User(name: "이순신", age: 25).obs;
  RxList list = [].obs;
  void increase() {
    count++;
    _double.value++;
    _double(444);
    nums(NUM.SECOND);
    user.update((_user){
      _user?.name = "이소룡";
    });
    list.add("가");
    list.addAll(); // 안에 list와 같은 Iterable 객체를 넣어준다.
    list.addIf(user.value.name == "이순신", "영웅"); // 앞에는 조건문을, 뒤에는 값을 넣어준다.
  }
  void putNumber(int value){
    count(value);
  }

  @override
    void onInit() {
    ever(count, (_) => print("매번 호출"));
    super.onInit();
  }
}