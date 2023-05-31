import 'package:flutter/material.dart';
import 'package:getx_tutorial/getx_mvvm_demo/data/app_exceptions.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MVVM DEMO"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
        },
      ),
    );
  }
}
