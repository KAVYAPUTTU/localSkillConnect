import 'package:flutter/material.dart';
import 'package:localskillconnect/Screens/FrontScreen/splash_screen1.dart';
import 'package:localskillconnect/Screens/FrontScreen/splash_screen2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     home:SplashScreen2() ,
     debugShowCheckedModeBanner: false,
     theme: ThemeData(
      colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.red,
        primary: Color(0xFFEA9932),
        secondary: Color(0xFF868383),
        tertiary: Color(0xFFD8DADD)
)
     ),
    );  
  }
}
