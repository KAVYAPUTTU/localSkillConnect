import 'package:flutter/material.dart';
import 'package:localskillconnect/Widgets/buttons.dart';

class ChangelanguagePage extends StatefulWidget {
  const ChangelanguagePage({super.key});

  @override
  State<ChangelanguagePage> createState() => _ChangelanguagePageState();
}

class _ChangelanguagePageState extends State<ChangelanguagePage> {
   String selectedLanguage = 'None';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Change Language',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           Text('Select Language',style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600
           ),),
           SizedBox(
            height: 20,
           ),
          Column(
            children: [
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
             Buttons(hintText: 'Continue',onTap: () => _showSuccessDialog(context),)
            ],
          )
          ],
        ),
      ),
    );
  }
}

void _showSuccessDialog(BuildContext context) {
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext dialogContext) {
      return AlertDialog(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        contentPadding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                const Spacer(),
                GestureDetector(
                  onTap: () => Navigator.of(dialogContext).pop(),
                  child: const Icon(Icons.close, color: Colors.red),
                ),
              ],
            ),
            SizedBox(
              height: 40,
              width: 40,
              child: Image.asset('assets/img/success.png'),
            ),
            const SizedBox(height: 20),
            const Text(
              'Language changed Successfully.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16,
                color: Colors.black,
              ),
            ),
          ],
        ),
      );
    },
  );
}
