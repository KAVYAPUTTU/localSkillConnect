import 'package:flutter/material.dart';
import 'package:localskillconnect/Screens/FrontScreen/intro1.dart';
import 'package:localskillconnect/Widgets/buttons.dart';

class SelectLanguage extends StatefulWidget {
  const SelectLanguage({super.key});

  @override
  State<SelectLanguage> createState() => _SelectLanguageState();
}

class _SelectLanguageState extends State<SelectLanguage> {
  String selectedLanguage = 'None';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
        child: Column(
          children: [
            const SizedBox(
              height: 200,
            ),
            Center(
              child: Image.asset(
                'assets/img/logo.png',
                fit: BoxFit.contain,
                height: 125,
                width: 125,
              ),
            ),
            Text(
              'Select Language',
              style: TextStyle(
                  fontFamily: 'AveriaSerifLibre',
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: Theme.of(context).colorScheme.primary),
            ),
            Text(
              'Choose your preferred language to continue',
              style: TextStyle(
                  fontFamily: 'AveriaSerifLibre',
                  fontSize: 11,
                  fontWeight: FontWeight.w700,
                  color: Theme.of(context).colorScheme.secondary),
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              width: double.infinity,
              child: RadioMenuButton(
                value: 'english',
                groupValue: selectedLanguage,
                onChanged: (selectedvalue) {
                  setState(() {
                    selectedLanguage = selectedvalue!;
                  });
                },
                style: ButtonStyle(
                  shape: WidgetStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(
                        color: Theme.of(context).colorScheme.tertiary,
                        width: 2,
                      ),
                    ),
                  ),
                  elevation: const WidgetStatePropertyAll(2),
                  backgroundColor: const WidgetStatePropertyAll(Colors.white),
                ),
                child: const Row(
                  children: [
                    Text('English'),
                    SizedBox(width: 5),
                    Text('(English)',style: TextStyle(
                      fontSize: 10,
                      color: Colors.grey,
                    ),),
                  ],
                ),
              ),
            ),
             const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: double.infinity,
              child: RadioMenuButton(
                value: 'telugu',
                groupValue: selectedLanguage,
                onChanged: (selectedvalue) {
                  setState(() {
                    selectedLanguage = selectedvalue!;
                  });
                },
                style: ButtonStyle(
                  shape: WidgetStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(
                        color: Theme.of(context).colorScheme.tertiary,
                        width: 2,
                      ),
                    ),
                  ),
                  elevation: const WidgetStatePropertyAll(2),
                  backgroundColor: const WidgetStatePropertyAll(Colors.white),
                ),
                child: const Row(
                  children: [
                    Text('తెలుగు'),
                     SizedBox(width: 5),
                    Text('(Telugu)',style: TextStyle(
                      fontSize: 10,
                      color: Colors.grey,
                    ),),
                  ],
                ),
              ),
            ),
             const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: double.infinity,
              child: RadioMenuButton(
                value: 'hindi',
                groupValue: selectedLanguage,
                onChanged: (selectedvalue) {
                  setState(() {
                    selectedLanguage = selectedvalue!;
                  });
                },
                style: ButtonStyle(
                  shape: WidgetStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(
                        color: Theme.of(context).colorScheme.tertiary,
                        width: 2,
                      ),
                    ),
                  ),
                  elevation: const WidgetStatePropertyAll(2),
                  backgroundColor: const WidgetStatePropertyAll(Colors.white),
                ),
                child: const Row(
                  children: [
                    Text('हिंदी'),
                    SizedBox(width: 5),
                    Text('(Hindi)',style: TextStyle(
                      fontSize: 10,
                      color: Colors.grey,
                    ),),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Buttons(hintText: 'Continue',navigateName: Intro1(),)
          ],
        ),
      ),
    );
  }
}
