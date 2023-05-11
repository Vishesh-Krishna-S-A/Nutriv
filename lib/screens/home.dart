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
        mainAxisAlignment: MainAxisAlignment.start,
        children: const [
          Image(
            image: AssetImage('assets/nutriv.png'),
            width: 200.0,
          ),
          Padding(
            padding: EdgeInsets.only(bottom:10.0, left: 50.0, right: 20.0,top:10.0),
            child: Text("People now prioritize a fit and healthy lifestyle, seeking nutritious food. Nutriv Flutter app provides a diet plan based on user characteristics like height, weight, and gender. It enhances the experience of achieving a balanced and healthy life. The app's algorithm helps users achieve their fitness goals.\n\nOur ML app provides a unique package with a calorie calculator and activity tracker. The UI enables user login, registration and input of personal information. The app generates personalized recipe recommendations based on calorie intake range.",
            style: TextStyle(
              fontSize: 19.0,
            ),
            ),
          )
        ],
      ),
    );
  }
}