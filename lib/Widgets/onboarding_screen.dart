import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  final String urlImage;
  final String subTitle;

  const OnboardingScreen({
    super.key,
    required this.urlImage,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 80),
          SizedBox(
            height: 300,
            child: Image.asset(
              urlImage,
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            subTitle,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'AveriaSerifLibre',
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
        ],
      ),
    );
  }
}
