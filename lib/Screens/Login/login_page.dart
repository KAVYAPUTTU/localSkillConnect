import 'package:flutter/material.dart';
import 'package:localskillconnect/Screens/Home/sub_service_setup.dart';
import 'package:localskillconnect/Widgets/buttons.dart';
import 'package:localskillconnect/Widgets/input_fields.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _passwordController = TextEditingController();

  String? passwordError;

  void handleLogin() {
    setState(() {
      passwordError = null;

      final password = _passwordController.text;

      if (password.isEmpty) {
        passwordError = "Password can't be empty";
      } else if (password.length < 6) {
        passwordError = "Password must be at least 6 characters";
      }

      if (passwordError == null) {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (builder) => SubServiceSetup(),
          ),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
                  children: [
            const SizedBox(
              height: 50,
            ),
            Center(
              child: Text(
                'Local Skill Connect',
                style: TextStyle(
                  fontFamily: 'AveriaSerifLibre',
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    'Name',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  const InputFields(icon: Icon(Icons.person), hinttext: 'Name'),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    'Password',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  InputFields(
                    icon: const Icon(Icons.lock),
                    hinttext: 'Enter Password',
                    errorText: passwordError,
                    suffixicon: const Icon(Icons.remove_red_eye),
                    isPassword: true,
                    controller: _passwordController,
                    onChanged: (value) {
                      if (passwordError != null) {
                        setState(() {
                          passwordError = null;
                        });
                      }
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Text(
                      'Forgot Password',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Buttons(hintText: 'Login',onTap: handleLogin,),
                  Center(
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'Don’t have an account? ', // First half
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.secondary,
                              fontSize: 16,
                            ),
                          ),
                          TextSpan(
                            text: ' Sign Up', // Second half
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
                  ],
                ),
          ),
        ));
  }
}
