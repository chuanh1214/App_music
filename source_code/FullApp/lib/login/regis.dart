import 'package:app/login/request.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Reis extends StatefulWidget {
  const Reis({super.key});

  @override
  State<Reis> createState() => _ReisState();
}

class _ReisState extends State<Reis> {
  TextEditingController _user = new TextEditingController();
  TextEditingController _pass = new TextEditingController();
  var _userErr = "Tài khoản không hợp lệ";
  var _passErr = "Mật khẩu phải trên 6 kí tự";
  var _userInvalid = false;
  var _passInvalid = false;
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
              icon: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
            ),
          )),
      //backgroundColor: Color.fromARGB(255, 201, 217, 254),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Color.fromARGB(255, 189, 88, 205),
          Color.fromARGB(255, 52, 140, 213),
        ])),
        child: Column(
          children: [
            SizedBox(
              height: 120,
              width: double.infinity,
            ),
            Container(
              child: Text(
                'Đăng kí',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: TextField(
                controller: _user,
                style: TextStyle(fontSize: 17, color: Colors.black),
                decoration: InputDecoration(
                    labelText: 'Nhập Email người dùng',
                    errorText: _userInvalid ? _userErr : null,
                    labelStyle: TextStyle(color: Colors.white, fontSize: 18)),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Stack(
              alignment: AlignmentDirectional.centerEnd,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                  child: TextField(
                    controller: _pass,
                    style: TextStyle(fontSize: 17, color: Colors.black),
                    obscureText: true,
                    decoration: InputDecoration(
                        labelText: 'Nhập mật khẩu',
                        errorText: _passInvalid ? _passErr : null,
                        labelStyle:
                            TextStyle(color: Colors.white, fontSize: 18)),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: SizedBox(
                width: 150,
                height: 30,
                child: Container(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size(40, 40),
                        elevation: 0,
                        primary: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(50)))),
                    onPressed: Clicked,
                    child: Text(
                      'Đăng kí',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(top: 20),
                child: SizedBox(
                  height: 50,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Log()));
                    },
                    child: Text(
                      'Đăng nhập',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }

  void Clicked() {
    setState(() {
      if (_user.text.length < 6 || !_user.text.contains('@')) {
        _userInvalid = true;
      } else {
        _userInvalid = false;
      }

      if (_pass.text.length < 6) {
        _passInvalid = true;
      } else {
        _passInvalid = false;
      }
      if (!_userInvalid && !_passInvalid) {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Log()));
      }
    });
  }
}
