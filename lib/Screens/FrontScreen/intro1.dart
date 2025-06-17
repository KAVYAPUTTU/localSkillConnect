import 'package:flutter/material.dart';
import 'package:localskillconnect/Screens/Login/login_page.dart';
import 'package:localskillconnect/Widgets/buttons.dart';
import 'package:localskillconnect/Widgets/onboarding_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Intro1 extends StatefulWidget {
  const Intro1({super.key});

  @override
  State<Intro1> createState() => _Intro1State();
}

class _Intro1State extends State<Intro1> {
  final controller = PageController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(bottom: 300),
        child: PageView(
          controller: controller,
          children: const [
            OnboardingScreen(
                urlImage: 'assets/img/intro1.png',
                subTitle:
                    'Get more work opportunities\n from users near your\n location.'),
            OnboardingScreen(
                urlImage: 'assets/img/intro2.png',
                subTitle:
                    'Earn more by offering your\n professional services\n directly.'),
            OnboardingScreen(
                urlImage: 'assets/img/intro3.png',
                subTitle:
                    'Verified professionals gain\nuser trust and better ratings.'),
          ],
        ),
      ),
      bottomSheet: Container(
        color: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        height: 300,
        child: Column(
          children: [
            SmoothPageIndicator(
              controller: controller,
              count: 3,
              effect: const WormEffect(
                spacing: 5,
                dotHeight: 10,
                dotWidth: 10,
                dotColor: Color.fromARGB(41, 0, 0, 0),
                activeDotColor: Colors.orange,
              ),
              onDotClicked: (index) => controller.animateToPage(index,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.ease),
            ),
            const SizedBox(
              height: 30,
            ),
            Buttons(
              hintText: 'Next',
              onTap: () {
                if (controller.page == 2) {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginPage()),
                  );
                } else {
                  controller.nextPage(
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.ease,
                  );
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
