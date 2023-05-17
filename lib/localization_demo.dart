import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LocalizationDemo extends StatefulWidget {
  const LocalizationDemo({Key? key}) : super(key: key);

  @override
  State<LocalizationDemo> createState() => _LocalizationDemoState();
}

class _LocalizationDemoState extends State<LocalizationDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Localization Demo"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ListTile(
            title: Text('message'.tr),
            subtitle: Text('name'.tr),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              OutlinedButton(
                onPressed: () {
                  Get.updateLocale(Locale('en','US'));
                },
                child: const Text("English"),
              ),
              SizedBox(width: 10,), 
              OutlinedButton(
                onPressed: () {
                  Get.updateLocale(Locale('ur','PK'));
                },
                child: const Text("Urdu"),
              ),
            ],
          )
        ],
      ),
    );
  }
}
