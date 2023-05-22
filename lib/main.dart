import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/getx_api_calling_example/login/login_screen.dart';
import 'package:getx_tutorial/getx_api_calling_example/shopping_app/shopping_list_screen.dart';
import 'package:getx_tutorial/getx_statemanagement_demo_with_list/statemanagment_with_list.dart';
import 'package:getx_tutorial/getx_statemanagement_expmple_three/StateManagementDemoThree.dart';
import 'package:getx_tutorial/getx_statemangement_example_four/views/state_management_example_four.dart';
import 'package:getx_tutorial/image_picker_demo/image_picker_screen.dart';
import 'package:getx_tutorial/laungauges.dart';
import 'package:getx_tutorial/localization_demo.dart';
import 'package:getx_tutorial/localization_demo_2.dart';
import 'package:getx_tutorial/getx_exmple_two/state_management_demo_two.dart';
import 'package:getx_tutorial/screen_one.dart';
import 'package:getx_tutorial/screen_two.dart';
import 'package:getx_tutorial/state_management_demo_one.dart';
import 'package:image_picker/image_picker.dart';

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
              // StateManagementDemoOne(),

              ///For StateManagement Example 2
              // StateManagementDemoTwo(),

              ///For StateManagement Example 3
              // StateManagementDemoThree(),

              ///For StateManagement Example 4
              //    ShoppingPage(),

              ///For StateManagement Example with List 1

              //StateManagementWithList(),

              ///Image Picker Using GetX
              //ImagePickerScreen(),

              /// For API Calling Demo
              // LoginScreen()

              /// For API Calling Demo2
              ShoppingListScreen(),

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
