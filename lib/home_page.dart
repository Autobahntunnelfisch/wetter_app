import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Text("Hier soll das Wetter angezeigt werden")),
            SizedBox(
              height: 20,
            ),
            Center(
                child: ElevatedButton(
                    onPressed: () {}, child: Text("Show weather")))
          ],
        ),
      ),
    );
  }
}
