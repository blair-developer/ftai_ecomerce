import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Stack(
        children: [
             Container(
             color: Colors.blueAccent,
             width: 400,
             height: 500,
             child: Text("hey"),

          ),
           Positioned(
            child: Text("widget 1"),
            bottom: 100,
            left: 20,
            ),
           Positioned(
            child: Text("widget 2", style: TextStyle(fontSize: 20),),
            bottom: 100,
            left: 200,
            ),
        ],
       ),
    );
  }
}