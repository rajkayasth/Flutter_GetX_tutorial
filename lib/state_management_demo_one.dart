import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/counter_controller.dart';

class StateManagementDemoOne extends StatefulWidget {
  const StateManagementDemoOne({Key? key}) : super(key: key);

  @override
  State<StateManagementDemoOne> createState() => _StateManagementDemoOneState();
}

class _StateManagementDemoOneState extends State<StateManagementDemoOne> {
  final CounterController controller = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    print("Rebuild");
    return Scaffold(
      appBar: AppBar(
        title: const Text("State Management Demo One"),
        centerTitle: true,
      ),
      body: Center(child: Obx(
        () {
          print(" Text Rebuild");
          return Text(
            controller.counter.toString(),
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.w800),
          );
        },
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.incrementCounter();
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
