import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LocalizationDemoTwo extends StatefulWidget {
  const LocalizationDemoTwo({Key? key}) : super(key: key);

  @override
  State<LocalizationDemoTwo> createState() => _LocalizationDemoTwoState();
}

class _LocalizationDemoTwoState extends State<LocalizationDemoTwo> {
  final List locale = [
    {'name': 'ENGLISH', 'locale': const Locale('en', 'US')},
    {'name': 'हिंदी', 'locale': const Locale('hi', 'IN')},
    {'name': 'اردو', 'locale': const Locale('ur', 'PK')},
  ];

  buildDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Choose a Language"),
          content: Container(
            width: double.maxFinite,
            child: ListView.separated(
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                        onTap: () {
                          print(locale[index]['name']);
                          updatelanguage(locale[index]['locale']);
                        },
                        child: Text(locale[index]['name'])),
                  );
                },
                separatorBuilder: (context, index) {
                  return const Divider(
                    color: CupertinoColors.inactiveGray,
                  );
                },
                itemCount: locale.length),
          ),
        );
      },
    );
  }

  updatelanguage(Locale locale) {
    Get.back();
    Get.updateLocale(locale);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Localization Demo"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "hello".tr,
              style: TextStyle(fontSize: 15),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "userMessage".tr,
              style: TextStyle(fontSize: 15),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "userDesc".tr,
              style: TextStyle(fontSize: 15),
            ),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
                onPressed: () {
                  /* var locale = Locale('hi', 'IN');
                  Get.updateLocale(locale);*/
                  buildDialog(context);
                },
                child: Text("changeLanguage".tr)),
          ],
        ),
      ),
    );
  }
}
