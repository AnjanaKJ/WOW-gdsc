import 'package:flutter/material.dart';
import 'range.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inflation Prediction'),
        actions: [
          IconButton(
            icon: const Icon(Icons.home),
            onPressed: () {
              Navigator.pushNamed(context, '/home');
            },
          ),
          IconButton(
            icon:const Icon(Icons.comment),
            onPressed: () {
              Navigator.pushNamed(context, '/chat');
            },
          ),
          IconButton(
            icon:const Icon(Icons.person),
            onPressed: () {
              Navigator.pushNamed(context, '/profile');
            },
          ),
        ]),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            "KEEP YOUR FINANCE PAGE IN CHECK",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 15.0,
          ),
          Image.network(
            'https://tse3.mm.bing.net/th?id=OIP.QWaIoRDI5iDuQBBiGBUaSQHaF9&pid=Api&P=0', // Replace with your image file path
            height: 350,
            width: 900,
            fit: BoxFit.contain,
          ),
          const SizedBox(height: 16),
          const Text(
            'Current Inflation Rate: 6%', // Replace with actual current inflation rate
            style: TextStyle(fontSize: 18),
          ),
          const SizedBox(
            height: 20.0,
          ),
          const Text(
            "ENTER THE RANGE YOU WANT TO CHECK YOUR INFLATION",
            style: TextStyle(fontSize: 10),
          ),
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Year',
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Range()),
              );
            },
            child: const Text('Search'),
          )
          // Add other data or widgets related to inflation prediction app
        ],
      ),
    );
  }
}
