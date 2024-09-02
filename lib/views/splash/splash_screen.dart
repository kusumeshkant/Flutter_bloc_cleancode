import 'package:flutter/material.dart';
import 'package:flutter_bloc_ca/config/components/internate_exception.dart';
import 'package:flutter_bloc_ca/config/data/exceptions/app_exceptions.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

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
