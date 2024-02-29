import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Stack(
        children: [
            PageView(
              scrollDirection: Axis.horizontal,
              children: [
                 Column(
                  children: [
                    Image.asset("assets/images/1.jpeg", fit: BoxFit.fitWidth,),
                    Text("First commit and push", style: TextStyle(
                      color: Colors.blue,
                      fontSize: 24,
                      fontWeight: FontWeight.bold
                    ),)
                  ],
                 )
              ],
             ),
           Positioned(
            child: Text("widget 1"),
            bottom: 100,
            left: 20,
            ),
        ],
       ),
    );
  }
}