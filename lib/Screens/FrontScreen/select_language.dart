import 'package:flutter/material.dart';

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
      body: Column(
        children: [
          SizedBox(
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
            width: 340,
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
                      color: Colors.grey,
                      width: 2,
                    ),
                  ),
                ),
                elevation: const WidgetStatePropertyAll(2),
                backgroundColor: const WidgetStatePropertyAll(Colors.white),
              ),
              child: Text('English'),
            ),
          ),
           SizedBox(
            height: 20,
          ),
          SizedBox(
            width: 340,
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
                      color: Colors.grey,
                      width: 2,
                    ),
                  ),
                ),
                elevation: const WidgetStatePropertyAll(2),
                backgroundColor: const WidgetStatePropertyAll(Colors.white),
              ),
              child: Text('తెలుగు'),
            ),
          ),
           SizedBox(
            height: 20,
          ),
          SizedBox(
            width: 340,
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
                      color: Colors.grey,
                      width: 2,
                    ),
                  ),
                ),
                elevation: const WidgetStatePropertyAll(2),
                backgroundColor: const WidgetStatePropertyAll(Colors.white),
              ),
              child: Text('हिंदी'),
            ),
          ),
        ],
      ),
    );
  }
}
