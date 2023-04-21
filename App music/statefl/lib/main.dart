import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
      width: double.infinity,
      color: Colors.grey,
      child: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          Icon(
            Icons.apple,
            color: Colors.red,
            size: 70,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Millions of songs',
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Text('Free on Spotify',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              )),
          SizedBox(
            height: 40,
          ),
          Container(
            width: 300,
            height: 50,
            alignment: Alignment.center,
            child: Text(
              'Sign up free',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: Colors.green,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: 300,
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.phone_android,
                ),
                Text('Sign in with Google',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold))
              ],
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                border: Border.all(width: 2, color: Colors.black)),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: 300,
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.g_mobiledata,
                  size: 50,
                  color: Colors.red,
                ),
                Text('Continue with Google',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold))
              ],
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                border: Border.all(width: 2, color: Colors.black)),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: 300,
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.facebook,
                  color: Colors.blue,
                ),
                Text('Continue with Facebook',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold))
              ],
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                border: Border.all(width: 2, color: Colors.black)),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            child: Text('Log in',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold)),
          )
        ],
      ),
    )));
  }
}
