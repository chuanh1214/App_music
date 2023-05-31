import 'package:app/login/login.dart';
import 'package:flutter/material.dart';

class Landing extends StatelessWidget {
  const Landing({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Color.fromARGB(255, 190, 81, 207),
          Color.fromARGB(255, 43, 123, 189),
        ])),
        child: IconButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Login()));
          },
          icon: Icon(Icons.headphones),
          iconSize: 100,
        ),
      ),
    );
  }
}
