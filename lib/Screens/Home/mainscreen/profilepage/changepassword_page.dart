import 'package:flutter/material.dart';
import 'package:localskillconnect/Widgets/buttons.dart';
import 'package:localskillconnect/Widgets/input_fields.dart';

class ChangepasswordPage extends StatefulWidget {
  const ChangepasswordPage({super.key});

  @override
  State<ChangepasswordPage> createState() => _ChangepasswordPageState();
}

class _ChangepasswordPageState extends State<ChangepasswordPage> {

  final TextEditingController _oldPasswordController = TextEditingController();
  final TextEditingController _newPasswordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();

  String? oldPasswordError;
  String? newPasswordError;
  String? confirmPasswordError;

  void _handleSubmit() {
    setState(() {
      oldPasswordError = null;
      newPasswordError = null;
      confirmPasswordError = null;

      final oldPassword = _oldPasswordController.text;
      final newPassword = _newPasswordController.text;
      final confirmPassword = _confirmPasswordController.text;

      if (oldPassword.isEmpty) {
        oldPasswordError = "Old password is required";
      }

      if (newPassword.isEmpty) {
        newPasswordError = "New password is required";
      } else if (newPassword.length < 6) {
        newPasswordError = "Password must be at least 6 characters";
      }

      if (confirmPassword.isEmpty) {
        confirmPasswordError = "Please confirm your new password";
      } else if (confirmPassword != newPassword) {
        confirmPasswordError = "Passwords do not match";
      }

      if (oldPasswordError == null &&
          newPasswordError == null &&
          confirmPasswordError == null) {
        _showSuccessDialog(context);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Change Password',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            const Text(
              'Old Password',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            ),
            InputFields(
              icon: const Icon(Icons.lock),
              hinttext: 'Old password',
              isPassword: true,
              controller: _oldPasswordController,
              errorText: oldPasswordError,
            ),
            const SizedBox(height: 20),
            const Text(
              'New Password',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            ),
            InputFields(
              icon: const Icon(Icons.lock),
              hinttext: 'New password',
              isPassword: true,
              controller: _newPasswordController,
              errorText: newPasswordError,
            ),
            const SizedBox(height: 20),
            const Text(
              'Confirm New Password',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            ),
            InputFields(
              icon: const Icon(Icons.lock),
              hinttext: 'Confirm new password',
              isPassword: true,
              controller: _confirmPasswordController,
              errorText: confirmPasswordError,
            ),
            const SizedBox(height: 30),
            Buttons(hintText: 'Change Password', onTap: _handleSubmit),
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
              'Password changed Successfully.',
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
