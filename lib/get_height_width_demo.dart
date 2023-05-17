import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetHeightWidth extends StatefulWidget {
  const GetHeightWidth({Key? key}) : super(key: key);

  @override
  State<GetHeightWidth> createState() => _GetHeightWidthState();
}

class _GetHeightWidthState extends State<GetHeightWidth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Get Height Width Tutorial"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: Get.height * .2,
            width: Get.width * .5,
            color: Colors.green,
            child: const Center(
              child: Text("Center"),
            ),
          ),
          Container(
            height: Get.height * .1,
            width: Get.width * .6,
            color: Colors.yellowAccent,
            child: const Center(
              child: Text("Center"),
            ),
          ),
        ],
      ),
    );
  }
}
