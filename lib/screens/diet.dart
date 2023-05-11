import 'package:flutter/material.dart';
import 'package:nutriv/constants.dart';
import 'package:nutriv/calculator_brain.dart' as cal;

class DietPage extends StatefulWidget {
  const DietPage({super.key});

  @override
  State<DietPage> createState() => _DietPageState();
}

class _DietPageState extends State<DietPage> {
  final double _calo= cal.getCal();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DIET GENARATOR'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 400.0,
              width: double.infinity,
              decoration: BoxDecoration(
                color: kActiveCardColour,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: const Text(
              'according to your data you should be eating anywhere around $_calo to $_calo KCal per day!',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30.0,
                
              ),),
            ),
          ),
        ],
      ),
    );
  }
}