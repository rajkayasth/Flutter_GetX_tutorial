import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/laungauges.dart';
import 'package:getx_tutorial/localization_demo.dart';
import 'package:getx_tutorial/localization_demo_2.dart';
import 'package:getx_tutorial/screen_one.dart';
import 'package:getx_tutorial/screen_two.dart';
import 'package:getx_tutorial/state_management_demo_one.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      locale: Locale('en', 'US'),
      translations: Languages(),
      fallbackLocale: Locale('en', 'US'),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: const NavigationHomeScreen(),
      getPages: [
        GetPage(
            name: "/",
            page: () =>

                ///For StateManagement Example 1
                StateManagementDemoOne(),

                ///If want to use Localization in App
                ///For Demo 1
                // LocalizationDemo(),

                ///For Demo 2
               // LocalizationDemoTwo()

            ///if want to use get height width tutorial
            //GetHeightWidth(),

            ///If Navigate to Navigation demo Page
            //NavigationHomeScreen(),
            ),
        GetPage(
          name: "/screenOne",
          page: () => ScreenOne(),
        ),
        GetPage(
          name: "/screenTwo",
          page: () => ScreenTwo(),
        ),
      ],
    );
  }
}
