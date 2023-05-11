import 'package:flutter/material.dart';
import 'package:nutriv/constants.dart';
import 'package:nutriv/components/bottom_button.dart';
import 'package:nutriv/screens/home.dart';
import 'dart:math';

class Gen extends StatefulWidget {
  const Gen({super.key});

  @override
  State<Gen> createState() => _GenState();
}

class _GenState extends State<Gen> {

var choice = Random().nextInt(3);

  final Breakfast=[
    'Aloo Gobhi Stuffing , 524 calories',
    '3-Ingredient Shakshuka , 454 calories',
    'Agnolotti with Meat and Spinach Filling , 519 calories',
    'Pot Roast of Seitan, Aunt Gloria-Style , 528 calories',
  ] ;
  final Lunch=[
    'Angel Hair Pasta with Tuna and Tomato Sauce ,624 calories',
    'American Cheese, Bacon and Tomato on White Bread ,780 calories',
    'Almond-Crusted Salmon with Leek and Lemon Cream ,675 calories',
    'Anasazi Butternut Squash Soup with Chorizo and Pepitas ,579 calories',
  ] ;
  final Dinner=[
    'American Cheese, Bacon and Tomato on White Bread , 847 calories',
    'Almond-Crusted Salmon with Leek and Lemon Cream ,675 calories',
    'All-Day Dinner Sandwich , 722 calories',
    'Almond-Crusted Salmon with Leek and Lemon Cream , 659 calories',
  ] ;
  final Total=[
    '1993KCal',
    '1968KCal',
    '1894KCal',
    '1786KCal',
  ] ;
  

 late String bfast=Breakfast.elementAt(choice);
 late String lunch=Lunch.elementAt(choice);
 late String dinner=Dinner.elementAt(choice);
 late String total=Total.elementAt(choice);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DIET GENERATOR'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 690.0,
              width: double.infinity,
              decoration: BoxDecoration(
                color: kActiveCardColour,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                    'Your meals for the day',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 35.0,
                      ),
                      ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                    'Breakfast: $bfast\n\nLunch:  $lunch\n\nDinner:  $dinner\n\nTotal:  $total',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 23.0,
                      ),
                      ),
                  ),
                  
                ],
              ),
            ),
          ),
           
        ],
      ),
    );
  }
}