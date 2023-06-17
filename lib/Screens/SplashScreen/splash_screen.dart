import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_service_provider_app/Screens/SplashScreen/phone_number_screen.dart';
import 'package:flutter_service_provider_app/dash_board_screen.dart';
import '../../Utils/color_constants.dart';
import '../../Utils/images_constants.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Timer(
        const Duration(seconds: 2),
        () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  const PhoneNumberScreen(),
            )));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double height =
        MediaQuery.of(context).size.height;
    double width =
        MediaQuery.of(context).size.width;
    return Container(
      color: blueColor,
      height: height,
      width: width,
      child: Image.asset(
        ImagesView.getMeBusinessLight,
        // fit: BoxFit.fill,
      ),
    );
    // AnimatedSplashScreen(
    //     duration: 3000,
    //     splash: SizedBox(
    //       height: height,
    //       width: width,
    //       child: Image.asset(
    //         Images.splashScreenImg,
    //         fit: BoxFit.fill,
    //       ),
    //     ),
    //     nextScreen: const DashboardScreen(),
    //     splashTransition:
    //         SplashTransition.fadeTransition,
    //     // pageTransitionType:
    //     //     PageTransitionType.scale,
    //     backgroundColor: Colors.blue);
  }
}
