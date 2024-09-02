import 'package:flutter/material.dart';
import 'package:flutter_bloc_ca/config/components/internate_exception.dart';
import 'package:flutter_bloc_ca/config/data/exceptions/app_exceptions.dart';
import 'package:flutter_bloc_ca/config/services/splash_services/splash_services.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  SplashServices _splashServices = SplashServices();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _splashServices.isLogin(context);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        throw NoInternateException("");
      },),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            InternateException(onPress: (){},)
            // const Center(
            //   child: Text(
            //     "Splash Screen",
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
