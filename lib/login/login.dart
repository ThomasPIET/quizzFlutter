import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:from_zero/services/auth.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Login'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(
                child: LoginButton(
                    color: Colors.deepPurple,
                    text: 'Sign in Anonymously',
                    loginMethod: AuthServices().signInAnonymously,
                    icon: FontAwesomeIcons.userNinja)),
          ],
        ));
  }
}

class LoginButton extends StatelessWidget {
  final Color color;
  final String text;
  final Function loginMethod;
  final IconData icon;

  const LoginButton(
      {super.key,
      required this.color,
      required this.text,
      required this.loginMethod,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      icon: Icon(
        icon,
        color: Colors.white,
        size: 24.0,
      ),
      label: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 20.0,
        ),
      ),
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all<Color>(color),
      ),
      onPressed: () => loginMethod(),
    );
  }
}
