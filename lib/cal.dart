import 'package:flutter/material.dart';

class Cal extends StatelessWidget {
  const Cal({super.key});

  @override
  Widget build(BuildContext context) {
     const appTitle = ' ';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor:  Color.fromARGB(255, 107, 33, 243),
          title: Text(appTitle),
        ),
        body: const Calo(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Calo extends StatefulWidget {
  const Calo({super.key});

  @override
  State<Calo> createState() => _CaloState();
}

GlobalKey myFormKey = new GlobalKey();

class _CaloState extends State<Calo> {
  @override
  Widget build(BuildContext context) {
    return Column(
    children: <Widget>[
      Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(25),
                child: const Text(
                  'Calorie Calculator',
                  style: TextStyle(
                      color: Color.fromARGB(255, 107, 33, 243),
                      fontWeight: FontWeight.w500,
                      fontSize: 30),
                )),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
          child: TextFormField(
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'Enter your Age',
            ),
          ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
          child: TextFormField(
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'Enter your Weight',
            ),
          ),
      ),Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
          child: TextFormField(
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'Enter your Height',
            ),
          ),
      ),
    ],
    );
  }
}