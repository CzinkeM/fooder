import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => MainScreenState();
}

class MainScreenState extends State<MainScreen> {

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
          child: Column(
            children: [
              Text('Welcome in the app!'),
            ],
          ),
        )
    );
  }
}