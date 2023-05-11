// import 'dart:html';
import 'package:flutter/material.dart';
import 'package:nutriv/screens/input_page.dart';
import 'package:nutriv/constants.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HOME'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Image(
            image: AssetImage('assets/nutriv.png')
          ),
        ],
      ),
    );
  }
}