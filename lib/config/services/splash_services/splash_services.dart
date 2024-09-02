import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc_ca/config/routes/routes_name.dart';

class SplashServices{

  isLogin(BuildContext context){

    Timer(Duration(seconds: 3), (){
      Navigator.pushNamedAndRemoveUntil(context, RoutesName.home_screen, (routes)=> false);
    });

  }
}