import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text(
            'Hello, \n Leonardo',
            style: TextStyle(fontSize: 40, 
            fontWeight: FontWeight.bold, 
            color: Color.fromRGBO(255, 1, 1, 1)
            ),
          ),
        ),
      ),
    );
  }
}