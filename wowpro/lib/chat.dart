import 'package:flutter/material.dart';

class Chatbot extends StatefulWidget {
  const Chatbot({Key? key}) : super(key: key);

  @override
  State<Chatbot> createState() => _ChatbotState();
}

class _ChatbotState extends State<Chatbot> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Inflation Prediction'), actions: [
        IconButton(
          icon: const Icon(Icons.home),
          onPressed: () {
            Navigator.pushNamed(context, '/home');
          },
        ),
        IconButton(
          icon: const Icon(Icons.person),
          onPressed: () {
            Navigator.pushNamed(context, '/profile');
          },
        ),
      ],
        backgroundColor:Colors.black54,),
      body: Column(
        children: [
          const SizedBox(
            height: 20.0,
          ),
          const Text(
            "WHAT CAN YOU DO NOW ?",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20.0,
          ),
          const Center(
            child: Text(
              "WITH INFLATION RATES ESTIMATED OUR CHAT-BOT CAN GIVE YOU ADVISES",
              style: TextStyle(
                fontSize: 12.0,
              ),
            ),
          ),
          const SizedBox(
            height: 30.0,
          ),
          const SizedBox(
            height: 20.0,
          ),
          Image.asset(
            "chatttt.png",
            height: 350,
            width: 850,
            fit: BoxFit.contain,
          ),
          const SizedBox(
            height: 20.0,
          ),
          const Text(
            "ENGAGE A SMART CONVERSTAION WITH OUR CHAT_BOT",
            style: TextStyle(fontSize: 12),
          ),
        ],
      ),
    );
  }
}
