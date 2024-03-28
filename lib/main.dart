import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ask Me Anything'),
        backgroundColor: Colors.greenAccent,
        centerTitle: true,
      ),
      body: ball(),
    );
  }
}

class ball extends StatefulWidget {
  const ball({super.key});

  @override
  State<ball> createState() => _ballState();
}

class _ballState extends State<ball> {
  int ball_number = 1;

  void generate_number() {
    setState(() {
      ball_number = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.teal,
      child: Center(
        child: ElevatedButton(
          onPressed: () {
            generate_number();
            // int random_number = Random().nextInt(5) + 1;
            // print(random_number);

            // ball_number = random_number;
          },
          child: Image(
            image: AssetImage('images/ball$ball_number.png'),
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.teal,
            elevation: 0.0,
          ),
        ),
      ),
    );
  }
}
