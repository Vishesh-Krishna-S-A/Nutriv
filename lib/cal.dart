import 'dart:html';

import 'package:flutter/material.dart';
import 'package:nutriv/screens/input_page.dart';
import 'package:nutriv/constants.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:nutriv/start.dart';

class Cali extends StatefulWidget {

  const Cali({super.key});

  @override
  State<Cali> createState() => _CaliState();
}

class _CaliState extends State<Cali> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: const Color(0xFF0A0E21),
        scaffoldBackgroundColor: const Color(0xFF0A0E21),
      ),
      home: const startPage(),
      
    );
  }
}
