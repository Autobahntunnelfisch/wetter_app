import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(child: Text("Hier soll das Wetter angezeigt werden")),
          Center(
              child:
                  ElevatedButton(onPressed: () {}, child: Text("Show weather")))
        ],
      ),
    );
  }
}
