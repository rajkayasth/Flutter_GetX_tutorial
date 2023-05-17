import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class CounterController extends GetxController {
  RxInt counter = 1.obs;

  incrementCounter() {
    counter.value++;
    debugPrint(counter.value.toString());
  }
}
