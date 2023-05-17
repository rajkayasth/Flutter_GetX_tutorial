import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/getx_statemanagement_expmple_three/example_three_controller.dart';

class StateManagementDemoThree extends StatefulWidget {
  const StateManagementDemoThree({Key? key}) : super(key: key);

  @override
  State<StateManagementDemoThree> createState() =>
      _StateManagementDemoThreeState();
}

class _StateManagementDemoThreeState extends State<StateManagementDemoThree> {
  ExampleThreeController exampleThreeController =
      Get.put(ExampleThreeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Example three"),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Notifications"),
              Obx(() => Switch(
                    value: exampleThreeController.notification.value,
                    onChanged: (value) {
                      exampleThreeController.setNotification(value);
                    },
                  ))
            ],
          )
        ],
      ),
    );
  }
}
