import 'package:get/get.dart';

int enableFlags({ bool? bold, bool? hidden }) {
  if(bold != null) {
    return 10;
  }

  if(hidden != null) {
    return 20;
  }

  return 1;
}

class CounterController extends GetxController {
  var counter = 0.obs;

  void add() {
    Get.snackbar('🧚‍♀️', '你好哇');

    enableFlags(bold: false, hidden: true);

    counter.value++;
  }
}