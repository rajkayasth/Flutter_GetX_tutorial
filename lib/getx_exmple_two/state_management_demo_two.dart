import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/getx_exmple_two/expmple_two_controller.dart';

class StateManagementDemoTwo extends StatefulWidget {
  const StateManagementDemoTwo({Key? key}) : super(key: key);

  @override
  State<StateManagementDemoTwo> createState() => _StateManagementDemoTwoState();
}

class _StateManagementDemoTwoState extends State<StateManagementDemoTwo> {
  ExampleTwoController controller = Get.put(ExampleTwoController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("State Management Demo Two"),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Obx(
            () => Container(
              color: Colors.red.withOpacity(controller.opacity.value),
              height: 200,
              width: 200,
            ),
          ),
          Obx(() => Slider(
                value: controller.opacity.value,
                onChanged: (value) {
                  controller.setOpacity(value);
                  //  setState(() {});
                },
              )),
        ],
      ),
    );
  }
}
