import 'package:app/profile.dart';
import 'package:flutter/material.dart';

AppBar appBar(
    {required IconData iconData,
    required bool canBack,
    required BuildContext context}) {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    leading: GestureDetector(
      onTap: () {
        if (canBack == true) Navigator.pop(context);
      },
      child: Icon(iconData),
    ),
    actions: [
      Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextButton(
            child: Text(
              'Hello Nhom 9',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.white),
            ),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => profile()));
            },
          ),
          // Text(
          //   'VietNam',
          //   style: TextStyle(fontSize: 10),
          // )
        ],
      ),
      Padding(
        padding: EdgeInsets.only(right: 8, left: 15),
        child: IconButton(
          icon: Icon(Icons.notifications_active_outlined),
          iconSize: 30,
          onPressed: () {
            // Navigator.push(
            //     context, MaterialPageRoute(builder: (context) => profile()));
          },
        ),
      )
    ],
  );
}
