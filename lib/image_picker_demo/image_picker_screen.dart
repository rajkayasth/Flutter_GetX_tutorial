import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/image_picker_demo/image_picker_controller.dart';

class ImagePickerScreen extends StatefulWidget {
  const ImagePickerScreen({Key? key}) : super(key: key);

  @override
  State<ImagePickerScreen> createState() => _ImagePickerScreenState();
}

class _ImagePickerScreenState extends State<ImagePickerScreen> {
  ImagePickerController controller = Get.put(ImagePickerController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Image Picker"),
      ),
      body: Obx(
        () => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: CircleAvatar(
                radius: 40,
                backgroundImage: controller.imagePath.isNotEmpty
                    ? FileImage(File(controller.imagePath.toString()))
                    : null,
              ),
            ),
            TextButton(
                onPressed: () {
                  controller.getImage();
                },
                child: Text("Pick Image"))
          ],
        ),
      ),
    );
  }
}
