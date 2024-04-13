import 'package:flutter/material.dart';
import 'package:fooder/main_screen.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => AuthScreenState();
}

class AuthScreenState extends State<AuthScreen> {
  String username = '';

  void _setUsername(String newUsername) {
    setState(() {
      username = newUsername;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Sign In!'),
            TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter your username',
              ),
              onChanged:(String newUsername) {
                _setUsername(newUsername);
              },
            ),
            OutlinedButton(
                onPressed: () {
                  if(username.isNotEmpty) {
                    Navigator
                        .of(context)
                        .push(
                        MaterialPageRoute(builder: (context) => const MainScreen())
                    );
                  }
                },
                child: const Text('Sign me in'))
          ],
        ),
      )
    );
  }
}