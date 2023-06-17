import 'package:flutter/material.dart';

import 'Screens/SplashScreen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      builder: (context, child) {
        final mediaQueryData =
            MediaQuery.of(context);

        return MediaQuery(
          data: mediaQueryData.copyWith(
              textScaleFactor: 1),
          child: child!,
        );
      },
      title: 'Flutter Customer',
      theme: ThemeData(
          primarySwatch: const MaterialColor(
            0xFF0F2146,
            <int, Color>{
              50: Color(0xFF001834),
              100: Color(0xFF001834),
              200: Color(0xFF001834),
              300: Color(0xFF001834),
              400: Color(0xFF001834),
              500: Color(0xFF001834),
              600: Color(0xFF001834),
              700: Color(0xFF001834),
              800: Color(0xFF001834),
              900: Color(0xFF001834),
            },
          ),
          pageTransitionsTheme:
              const PageTransitionsTheme(
                  builders: {
                TargetPlatform.iOS:
                    ZoomPageTransitionsBuilder(),
                TargetPlatform.android:
                    CupertinoPageTransitionsBuilder(),
              })),
      home: const Splash(),
    );
  }
}
