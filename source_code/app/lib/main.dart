// import 'package:app/login/request.dart';
import 'package:app/sources/landing.dart';
// import 'package:app/profile/profile.dart';
import 'package:flutter/material.dart';

// import 'login/login.dart';

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
    return Scaffold(body: Landing());
  }
}
