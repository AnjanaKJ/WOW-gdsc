import 'package:flutter/material.dart';
import 'profile.dart';
import 'home.dart';
import "range.dart";
import 'chat.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Inflation Prediction',
    initialRoute: '/',
    routes: {
      '/': (context) => const SignInPage(),
      '/range': (context) => const Range(),
      '/profile': (context) => const profile(),
      '/home': (context) => const Home(),
      '/chat':(context) => const Chatbot()

      // Add other named routes for other pages
    },
  ));
}

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  String _email = '';
  String _password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sign In'), actions: [
        IconButton(
          icon: const Icon(Icons.home),
          onPressed: () {
            Navigator.pushNamed(context, '/home');
          },
        ),
        IconButton(
          icon: const Icon(Icons.comment),
          onPressed: () {
            Navigator.pushNamed(context, '/chat');
          },
        ),
        IconButton(
          icon: const Icon(Icons.person),
          onPressed: () {
            Navigator.pushNamed(context, '');
          },
        ),
      ],
       backgroundColor: Colors.black54,),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              const Text(
                "INFLATION",
                style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.w300),
              ),
              const SizedBox(
                height: 20.0,
              ),
              const Text(
                "HELPING YOU TO CREATE YOUR PLAN",
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20.0,
              ),
              TextFormField(
                onChanged: (value) => setState(() => _email = value),
                decoration: const InputDecoration(labelText: 'Email'),
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                onChanged: (value) => setState(() => _password = value),
                obscureText: true,
                decoration: const InputDecoration(labelText: 'Password'),
              ),
              const SizedBox(height: 32.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Home()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black54,
                ),
                child: const Text('Sign In'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
