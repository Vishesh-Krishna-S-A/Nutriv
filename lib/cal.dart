import 'package:flutter/material.dart';
import 'package:nutriv/screens/input_page.dart';

class Cali extends StatelessWidget {

  const Cali({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: const Color(0xFF0A0E21),
        scaffoldBackgroundColor: const Color(0xFF0A0E21),
      ),
      home: const InputPage(),
    );
  }
}
