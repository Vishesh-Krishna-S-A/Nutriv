import 'dart:html';
import 'package:flutter/material.dart';
import 'package:nutriv/screens/input_page.dart';
import 'package:nutriv/constants.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class startPage extends StatefulWidget {
  const startPage({super.key});

  @override
  State<startPage> createState() => _startPageState();
}

class _startPageState extends State<startPage> {
  
  int _selectedIndex = 0;

  @override

  Widget build(BuildContext context) {
    return Scaffold(
     body: IndexedStack(
      index: _selectedIndex,
      children: Screen,
     ),
      bottomNavigationBar: GNav(
        backgroundColor: kInactiveCardColour,
        tabBackgroundColor: kActiveCardColour,
        tabs: const [
          GButton(
            icon: Icons.home,
            text: 'Home',
          ),
          GButton(
            icon: Icons.fastfood_outlined,
            text: 'Diet',
            ),
          GButton(
            icon: Icons.calculate_outlined,
            text: 'Calculate',
            ),
        ],
       selectedIndex: _selectedIndex,
       onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
      ),

    );
  }
}