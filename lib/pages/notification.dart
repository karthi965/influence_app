import 'package:flutter/material.dart';
import 'package:influence_app/pages/payment%20screen.dart';

import 'notification_maneger.dart';

class NotifiScreen extends StatelessWidget {
  const NotifiScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back,color: Colors.white,),
        ),backgroundColor: Colors.transparent,
        title: const Text(
          'Notification',
          style: TextStyle(fontSize: 18,color: Colors.white),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('image/1234556.jpeg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [SizedBox(height:100,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Request',
                  style: TextStyle(fontSize: 18,color: Colors.white),
                ),
                SizedBox(width: 40),
                Text(
                  'Others',
                  style: TextStyle(fontSize: 18,color: Colors.white),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Divider(
                height: 10,
                thickness: 2,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              NotificationManager.message,
              style: const TextStyle(fontSize: 16, color: Colors.black),
            ),
            const SizedBox(height: 200),
            Container(
              width: 100,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Color(0xFFD98324), Color(0xFFE43B11)],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent,
                  minimumSize: const Size(double.infinity, 30),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Payment(),
                      ));
                },
                child: const Text(
                  'Pay',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
