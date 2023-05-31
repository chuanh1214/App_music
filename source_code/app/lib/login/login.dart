import 'dart:ui';

import 'package:app/login/regis.dart';
import 'package:app/login/request.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: InkWell(
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back),
            ),
          )),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Color.fromARGB(255, 189, 88, 205),
          Color.fromARGB(255, 52, 140, 213),
        ])),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 170),
              child: Container(
                child: Icon(
                  Icons.headphones,
                  size: 100,
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              height: 45,
              width: 300,
              alignment: Alignment.center,
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Reis()));
                },
                child: Text(
                  "Đăng kí miễn phí",
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 45,
              width: 300,
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.phone_android,
                    color: Colors.white,
                  ),
                  Text(
                    "Tiếp tục bằng số điện thoại",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 45,
              width: 300,
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    Icons.g_mobiledata_outlined,
                    color: Colors.red,
                    size: 38,
                  ),
                  Text(
                    "Tiếp tục bằng Google ",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 45,
              width: 300,
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    Icons.facebook_rounded,
                    color: Colors.blue,
                  ),
                  Text(
                    "Tiếp tục bằng Facebook",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(40, 40),
                    elevation: 0,
                    primary: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50)))),
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Log()));
                },
                child: Text(
                  'Đăng nhập',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
