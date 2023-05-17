import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/get_height_width_demo.dart';
import 'package:getx_tutorial/navigation_home_screen.dart';
import 'package:getx_tutorial/screen_one.dart';
import 'package:getx_tutorial/screen_two.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: const NavigationHomeScreen(),
      getPages: [
        GetPage(
          name: "/",
          page: () =>

              ///if want to use get height width tutorial
              GetHeightWidth(),

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
