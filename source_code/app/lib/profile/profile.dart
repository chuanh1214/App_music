import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: Container(
      //   height: double.infinity,
      //   width: double.infinity,
      //   color: Colors.black,
      // ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            //Header Container
            Container(
              padding: const EdgeInsets.all(10.0),
              color: Colors.black,
              alignment: Alignment.center,
              child: Row(children: [
                Container(
                  margin: EdgeInsets.only(
                    left: 15,
                    right: 15,
                  ),
                  // padding: const EdgeInsets.all(10.0),
                  alignment: Alignment.center,
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Icon(
                    Icons.account_circle,
                  ),
                ),
                Column(
                  children: [
                    Text(
                      'Dieu Linh Nguyen',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      'linhnguyen@gmail.com',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ]),
            ),

            //Body Container
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      // color: Colors.red,
                      color: Colors.black,
                      height: 200.0,
                      width: double.infinity,
                      alignment: Alignment.center,
                      child: Text(
                        "Content 1",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Container(
                      // color: Colors.green,
                      color: Colors.black,
                      height: 300.0,
                      width: double.infinity,
                      alignment: Alignment.center,
                      child: Text(
                        "Content 2",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Container(
                      // color: Colors.red,
                      color: Colors.black,
                      height: 200.0,
                      width: double.infinity,
                      alignment: Alignment.center,
                      child: Text(
                        "Content 3",
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  ],
                ),
              ),
            ),

            Container(
              padding: const EdgeInsets.all(10.0),
              color: Color.fromARGB(255, 33, 34, 34),
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.home),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.explore_outlined),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.menu_book_outlined),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Profile()));
                    },
                    icon: Icon(Icons.account_circle),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
