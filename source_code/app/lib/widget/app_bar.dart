import 'dart:ffi';

import 'package:flutter/material.dart';

AppBar appBar({
  required IconData iconData,
  required bool canBack,
  required BuildContext context
}) {
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
          Text(
            'Hello Nhom 9',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
            'VietNam',
            style: TextStyle(fontSize: 10),
          )
        ],
      ),
      Padding(
        padding: EdgeInsets.only(right: 8, left: 15),
        child: Icon(
          Icons.notifications_active_outlined,
          size: 30,
        ),
      )
    ],
  );
}
