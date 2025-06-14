import 'package:flutter/material.dart';
import 'package:localskillconnect/Screens/FrontScreen/select_language.dart';

class SplashScreen2 extends StatefulWidget {
  const SplashScreen2({super.key});

  @override
  State<SplashScreen2> createState() => _SplashScreen2State();
}

class _SplashScreen2State extends State<SplashScreen2> {
  @override
   void initState() {
    super.initState();

    // Delay for 3 seconds and then navigate
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context) => SelectLanguage()),
      );
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
              height: 330,
              width: 400,
              child: Column(
                children: [
                  Center(
                    child: Image.asset(
                      'assets/img/logo.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                  Text(
                    'Local Skill Connect',
                    style: TextStyle(
                        fontFamily: 'AveriaSerifLibre',
                        fontSize: 32,
                        fontWeight: FontWeight.w700,
                        color: Theme.of(context).colorScheme.primary),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
