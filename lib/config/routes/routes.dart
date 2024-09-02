import 'package:flutter/material.dart';
import 'package:flutter_bloc_ca/config/routes/routes_name.dart';

import '../../views/views.dart';

class Routes {
  
  static Route<dynamic> generateRoute(RouteSettings routesetting) {
    switch (routesetting.name) {
      case RoutesName.splashScreen:
        return MaterialPageRoute(builder: (context) => SplashScreen());

      case RoutesName.home_screen:
        return MaterialPageRoute(builder: (context) => HomeScreen());

      case RoutesName.login_screen:
        return MaterialPageRoute(builder: (context) => LoginScreen());

      default:
        return MaterialPageRoute(builder: (context) => HomeScreen());
    }
  }
}
