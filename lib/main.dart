import 'package:flutter/material.dart';
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
     home:const SplashScreen2() ,
     debugShowCheckedModeBanner: false,
     theme: ThemeData(
      colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.red,
        primary: const Color(0xFFEA9932),
        secondary: const Color(0xFF868383),
        tertiary: const Color(0xFFD8DADD)
)
     ),
    );  
  }
}
