import 'package:flutter/material.dart';

class Range extends StatefulWidget {
  const Range({Key? key}) : super(key: key);
  @override
  State<Range> createState() => _RangeState();
}

class _RangeState extends State<Range> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Inflation Prediction'),
      backgroundColor:Colors.black54,),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            "CPI PREDICTION",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 15.0,
          ),
          Image.asset(
            'cpi.jpeg', // Replace with your image file path
            height: 350,
            width: 900,
            fit: BoxFit.contain,
          ),
          const SizedBox(height: 16),
          const Text(
            'Current CPI Rate: 174.0', // Replace with actual current inflation rate
            style: TextStyle(fontSize: 18),
          ),
          const SizedBox(
            height: 20.0,
          ),
          // Add other data or widgets related to inflation prediction app
        ],
      ),
    );
  }
}

