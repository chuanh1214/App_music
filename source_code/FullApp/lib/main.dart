import 'package:app/splash_screen.dart';
import 'package:flutter/material.dart';
import 'screens/list.dart';

void main() {
  runApp(const AppMusic());
}

class AppMusic extends StatefulWidget {
  const AppMusic({super.key});

  @override
  State<AppMusic> createState() => _AppMusicState();
}

class _AppMusicState extends State<AppMusic> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Page(),
    );
  }
}

class Page extends StatelessWidget {
  const Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SplashScreen());
  }
}
