import 'package:flutter/material.dart';

class Settingscreen extends StatefulWidget {
  const Settingscreen({super.key});

  @override
  State<Settingscreen> createState() => _SettingscreenState();
}

class _SettingscreenState extends State<Settingscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'HI Nik Clous',
          style: TextStyle(fontSize: 18,fontFamily: 'Lato'),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,fontFamily: 'Lato'),
            ),
            Row(
              children: [
                Icon(Icons.stacked_bar_chart_rounded),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Your Activity',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18,fontFamily: 'Lato'),
                    )),
              ],
            ),
            Row(
              children: [
                Icon(Icons.notifications),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Notification',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18,fontFamily: 'Lato'),
                    )),
              ],
            ),
            Row(
              children: [
                Icon(Icons.key),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Creator',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18,fontFamily: 'Lato'),
                    )),
              ],
            ),
            Row(
              children: [
                Icon(Icons.back_hand),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'privacy',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18,fontFamily: 'Lato'),
                    )),
              ],
            ),
            Row(
              children: [
                Icon(Icons.shield_moon_outlined),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Security',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18,fontFamily: 'Lato'),
                    )),
              ],
            ),
            Row(
              children: [
                Icon(Icons.account_circle_sharp),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Account',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18,fontFamily: 'Lato'),
                    )),
              ],
            ),
            Row(
              children: [
                Icon(Icons.question_mark),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Help',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18,fontFamily: 'Lato'),
                    )),
              ],
            ),
            Row(
              children: [
                Icon(Icons.messenger_outline),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'About',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18,fontFamily: 'Lato'),
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
