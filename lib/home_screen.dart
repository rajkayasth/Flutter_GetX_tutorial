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
      body: Column(
        children: [
          Card(
            margin: const EdgeInsets.all(10),
            child: ListTile(
              title: const Text("GetX Dialog Alert"),
              subtitle: const Text("Dialog Alert"),
              onTap: () {
                Get.defaultDialog(
                    title: "Delete Chat",
                    titlePadding: const EdgeInsets.only(top: 20),
                    middleText: "Are You Sure U want to Delete Chat",
                    contentPadding: const EdgeInsets.all(20),
                    textConfirm: "Yes",
                    textCancel: "No");
              },
            ),
          ),
          Card(
            margin: const EdgeInsets.all(10),
            child: ListTile(
              title: const Text("GetX Bottom Sheet "),
              subtitle: const Text("BottomSheet"),
              onTap: () {
                Get.bottomSheet(Container(
                  decoration: BoxDecoration(
                      color: CupertinoColors.activeOrange,
                      border: Border.all(
                          width: 1, color: CupertinoColors.activeOrange),
                      borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(20),
                          topLeft: Radius.circular(20))),
                  child: Column(
                    children: [
                      ListTile(
                        leading: const Icon(
                          Icons.light_mode,
                          color: Colors.white,
                        ),
                        title: const Text(
                          "Light Theme",
                          style: TextStyle(color: Colors.white),
                        ),
                        onTap: () {
                          Get.changeTheme(ThemeData.light());
                          Get.back();
                        },
                      ),
                      ListTile(
                        leading: const Icon(
                          Icons.dark_mode,
                          color: Colors.white,
                        ),
                        title: const Text("Dark Theme",
                            style: TextStyle(color: Colors.white)),
                        onTap: () {
                          Get.changeTheme(ThemeData.dark());
                          Get.back();
                        },
                      ),
                    ],
                  ),
                ));
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.snackbar("SnackBar Title", "Snack bar Massage",
              backgroundColor: Colors.blueAccent,
              colorText: Colors.white,
              snackPosition: SnackPosition.BOTTOM);
        },
      ),
    );
  }
}
