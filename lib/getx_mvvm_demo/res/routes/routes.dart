import 'package:get/get.dart';
import 'package:getx_tutorial/getx_mvvm_demo/res/routes/route_name.dart';
import 'package:getx_tutorial/getx_mvvm_demo/views/splash_screen.dart';

class AppRoutes {
  static appRoutes() {
    GetPage(
        name: RouteName.splashScreen,
        page: () => SplashScreen(),
        transition: Transition.leftToRight,
        transitionDuration: Duration(milliseconds: 250)
    );
  }
}
