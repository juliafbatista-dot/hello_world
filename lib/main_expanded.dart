import 'package:flutter/material.dart';

void main() {
  runApp(ExpandedExample());
}

class ExpandedExample extends StatelessWidget {
  const ExpandedExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Exemplondo Expended",
      home: Scaffold(
        appBar: AppBar(title:const Text("Expanded"),
        ),
        body: Column(
            children: [Container(
                height: 100,
                width: 100,
                color: Colors.pinkAccent,
                child: const Center(child: Text("Header")),
              ),
              Expanded(child: Container(
                color: Colors.purple,
                child: const Center(
                  child: Text(
                    "Ocupa todo espaço restante",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              )
            ],
           ),
          ),
        );
  }
}
