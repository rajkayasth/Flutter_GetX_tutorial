import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/screen_one.dart';

class NavigationHomeScreen extends StatefulWidget {
  const NavigationHomeScreen({Key? key}) : super(key: key);

  @override
  State<NavigationHomeScreen> createState() => _NavigationHomeScreenState();
}

class _NavigationHomeScreenState extends State<NavigationHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GetX Tutorials"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: TextButton(
              onPressed: () {
                // Get.to(const ScreenOne());
                Get.toNamed("/screenOne",arguments: [
                  "App Name",
                  "DEMO ON GETX"
                ]);
              },
              child: const Text("Go to Next screen"),
            ),
          )
        ],
      ),
    );
  }
}
