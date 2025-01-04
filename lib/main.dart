import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RandomNumberGenerator(),
      theme: ThemeData(
        primarySwatch: Colors.blueGrey, // Set the app's primary theme color
      ),

    );
  }
}

class RandomNumberGenerator extends StatefulWidget {
  @override
  _RandomNumberGeneratorState createState() => _RandomNumberGeneratorState();
}

class _RandomNumberGeneratorState extends State<RandomNumberGenerator> {
  final Random _random =
  Random(); // Create a Random object for generating random numbers
  int _randomNumber = 0;

  // Method ffor generating a random 4 digit number
  void generateRandomNumber() {
    setState(() {
      _randomNumber =
          1000 + _random.nextInt(9000); // Generates a random 4-digit number
    },);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('THE GENERATOR'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Number', // Display a label for the random number
              style: TextStyle(fontSize: 100),
            ),
            Text(
              '$_randomNumber', // Display the generated random number
              style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed:
              generateRandomNumber, // Call the function to generate a random number
              child: Text(
                  'Generate Random 4-Digit Number'), // Button to trigger number generation
            ),
          ],
        ),
      ),
    );
  }
}
