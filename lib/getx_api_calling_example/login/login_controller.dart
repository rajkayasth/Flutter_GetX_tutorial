import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/getx_api_calling_example/login/login_response_model.dart';
import 'package:http/http.dart';

class LoginController extends GetxController {
  final emailController = TextEditingController().obs;
  final passWordController = TextEditingController().obs;

  void loginApi() async {
    try {
      final response = await post(Uri.parse("https://reqres.in/api/login"),
          body: {
            "email": emailController.value.text,
            "password": passWordController.value.text
          });

      if (response.statusCode == 200) {
        debugPrint(response.body);
        /*var data = jsonDecode(response.body);
        debugPrint(data.toString());
        debugPrint(response.statusCode.toString());
*/
        var json = response.body;
        var data = jsonDecode(json);
        LoginResponseModel.fromJson(data);

        Get.snackbar("LoginSuccess", response.body ?? "null",
            colorText: Colors.white, backgroundColor: Colors.green);
      } else {
        Get.snackbar("LoginFailed", 'error',
            colorText: Colors.white, backgroundColor: Colors.red);
      }
    } catch (e) {
      Get.snackbar("Exception", e.toString(),
          colorText: Colors.white, backgroundColor: Colors.red);
      debugPrint(e.toString());
    }
  }
}
