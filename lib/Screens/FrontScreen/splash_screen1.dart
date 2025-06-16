import 'package:flutter/material.dart';
import 'package:localskillconnect/Screens/FrontScreen/splash_screen2.dart';

class SplashScreen1 extends StatefulWidget {
  const SplashScreen1({super.key});

  @override
  State<SplashScreen1> createState() => _SplashScreen1State();
}

class _SplashScreen1State extends State<SplashScreen1> {
  @override
   void initState() {
    super.initState();
    // Delay for 3 seconds
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context) => SplashScreen2()),
      );
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text('Local Skill \n Connect',
            style: TextStyle(
              fontFamily: 'AveriaSerifLibre',
              fontSize: 40,
              fontWeight: FontWeight.w700,
              color: Colors.white
            ),),
          )
        ],
      ),
    );
  }
}