import 'package:flutter/material.dart';
import 'package:nutriv/constants.dart';
import 'package:nutriv/components/bottom_button.dart';
import 'package:nutriv/screens/home.dart';
import 'package:nutriv/screens/generator.dart';

class DietPage extends StatefulWidget {
  const DietPage({super.key});

  @override
  State<DietPage> createState() => _DietPageState();
}

class _DietPageState extends State<DietPage> {
  final int _calo1= 1600;
  final int _calo2= 2600;

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
              height: 620.0,
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
                    'Diet Generator',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 45.0,
                      ),
                      ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                    'According to your data you should be eating anywhere around $_calo1 to $_calo2 KCal per day!',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 23.0,
                      ),
                      ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: BottomButton(
                      buttonTitle: 'GENERATE',
                      onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Gen(),
                          ),
                        );
                      },
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