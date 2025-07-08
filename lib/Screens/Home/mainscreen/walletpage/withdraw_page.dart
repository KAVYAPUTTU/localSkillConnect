import 'package:flutter/material.dart';
import 'package:localskillconnect/Widgets/buttons.dart';

class WithdrawPage extends StatefulWidget {
  const WithdrawPage({super.key});

  @override
  State<WithdrawPage> createState() => _WithdrawPageState();
}

class _WithdrawPageState extends State<WithdrawPage> {
  String selectedOption = 'Bank';
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: const Text(
          'Withdraw',
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            Text(
              'Enter Bank account number / UPI ID',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: Theme.of(context).colorScheme.secondary,
              ),
            ),
            const SizedBox(height: 15),

            // Radio Options
            Row(
              children: [
                Transform.scale(
                  scale: 0.8,
                  child: Radio<String>(
                    value: 'Bank',
                    groupValue: selectedOption,
                    onChanged: (value) {
                      setState(() {
                        selectedOption = value!;
                      });
                    },
                  ),
                ),
                const Text('Bank Account Number',),
                const SizedBox(width: 10),
                Transform.scale(
                  scale: 0.8,
                  child: Radio<String>(
                    value: 'UPI',
                    groupValue: selectedOption,
                    onChanged: (value) {
                      setState(() {
                        selectedOption = value!;
                      });
                    },
                  ),
                ),
                const Text('UPI ID'),
              ],
            ),

            const SizedBox(height: 10),

            // Input Field for Account or UPI
            const TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText:'Enter your Bank Account Number',
                labelStyle: TextStyle(fontSize: 14,color: Colors.grey),
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 30),

            // Amount field
            const Text(
              'Enter amount to withdraw',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 10),
           const  TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                prefixText: '\$ ',
                border: OutlineInputBorder(),
                hintText: '500',
                hintStyle: TextStyle(fontSize: 14,color: Colors.grey),
              ),
            ),

            const SizedBox(height: 30),

           Buttons(hintText: 'withdraw',onTap:() => _showSuccessDialog(context) ,)
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
              '\$ 20 successfully withdrawn to the bank account.',
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

