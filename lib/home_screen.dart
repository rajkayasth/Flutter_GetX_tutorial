import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GetX Tutorials"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.snackbar("SnackBar Title", "Snack bar Massage",
              backgroundColor: Colors.blueAccent, colorText: Colors.white,snackPosition: SnackPosition.BOTTOM);
        },
      ),
    );
  }
}
