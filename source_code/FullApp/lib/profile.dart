import 'package:flutter/material.dart';

class profile extends StatelessWidget {
  const profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        //margin: EdgeInsets.only(top: 200),
        color: Colors.black,

        child: ListView(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 100, bottom: 70),
              child: Row(children: [
                Container(
                  margin: EdgeInsets.only(
                    left: 15,
                    right: 15,
                  ),
                  // padding: const EdgeInsets.all(10.0),
                  alignment: Alignment.center,
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Icon(
                    Icons.account_circle,
                    size: 70,
                  ),
                ),
                Column(
                  children: [
                    Text(
                      'Dieu Linh Nguyen',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                      ),
                    ),
                    Text(
                      'linhnguyen@gmail.com',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                      ),
                    ),
                  ],
                ),
              ]),
            ),
            ListTile(
              leading: Icon(Icons.account_box_rounded),
              iconColor: Colors.white,
              title: Text(
                'Profile',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.add_alert_rounded),
              iconColor: Colors.white,
              title: Text(
                'Notification',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.mic_external_on_rounded),
              iconColor: Colors.white,
              title: Text(
                'Audio',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.arrow_back),
              iconColor: Colors.white,
              title: Text(
                'Playback',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.beenhere_rounded),
              iconColor: Colors.white,
              title: Text(
                'Data sever',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.admin_panel_settings_outlined),
              iconColor: Colors.white,
              title: Text(
                'Privavcy and social networks',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.high_quality_outlined),
              iconColor: Colors.white,
              title: Text(
                'Video quality',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              iconColor: Colors.white,
              title: Text(
                'Device',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.padding),
              iconColor: Colors.white,
              title: Text(
                'Language',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.dashboard_customize_rounded),
              iconColor: Colors.white,
              title: Text(
                'Advertising',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.interests_rounded),
              iconColor: Colors.white,
              title: Text(
                'Introduction',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
