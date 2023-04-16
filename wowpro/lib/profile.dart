import 'package:flutter/material.dart';

class profile extends StatefulWidget {
  const profile({Key? key}) : super(key: key);

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("PROFILE"),
        centerTitle: true,
        backgroundColor: Colors.black54,
        actions: [
          IconButton(
            icon: const Icon(Icons.home),
            onPressed: () {
              Navigator.pushNamed(context, '/home');
            },
          ),]
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 40.0, 20.0, 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20.0),
            const Center(
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://tse2.mm.bing.net/th?id=OIP.FMXcWvy8DeSem2kV_8KH0gHaEK&pid=Api&P=0"),
                radius: 40.0,
              ),
            ),
            const Divider(
              height: 20,
              thickness: 0.5,
              indent: 20,
              endIndent: 0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "NAME",
                  style: TextStyle(fontSize: 20.0, color: Colors.black54),
                ),
                SizedBox(height: 5.0),
                Text("Andrew"),
                SizedBox(height: 20.0),
                Text(
                  "ADREESS",
                  style: TextStyle(fontSize: 20.0, color: Colors.black54),
                ),
                SizedBox(height: 5.0),
                Text("KKSJKAjsjksdjnd 23"),
              ],
            )
          ],
        ),
      ),
    );
  }
}
