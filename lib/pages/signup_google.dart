import 'package:flutter/material.dart';
import 'package:influence_app/pages/Signupwithmail.dart';
import 'package:influence_app/pages/loginwithmail.dart';

import 'categorypage.dart';

class Signupwithgooglescreen extends StatefulWidget {
  const Signupwithgooglescreen({super.key});

  @override
  State<Signupwithgooglescreen> createState() => _SignupwithgooglescreenState();
}

class _SignupwithgooglescreenState extends State<Signupwithgooglescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(   leading: IconButton(
      icon: const Icon(Icons.arrow_back, color: Colors.black),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => Categoryscreen()), // Navigate to Categoryscreen
        );
      },
    ),
    ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('image/backgroundpic.jpeg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(
              16.0), // Increased padding for better spacing
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Card(
                color: Colors.red, // Google Red Color Code
                elevation: 4, // Added elevation for better card visibility
                child: Padding(
                  padding:
                      const EdgeInsets.all(16.0), // Padding inside the card
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('image/img_1.png',
                          height: 24,
                          width: 24), // Ensure correct path and size
                      SizedBox(width: 8), // Spacing between image and text
                      Text(
                        'Signup with Apple',
                        style: TextStyle(color: Colors.white, fontSize: 18,fontFamily: 'Lato'),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20), // Space between cards
              Card(
                color: Colors.red, // Google Yellow Color Code
                elevation: 4, // Added elevation for better card visibility
                child: Padding(
                  padding:
                      const EdgeInsets.all(16.0), // Padding inside the card
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('image/img_2.png',
                          height: 24,
                          width: 24), // Ensure correct path and size
                      SizedBox(width: 8), // Spacing between image and text
                      Text(
                        'Signup with Google',
                        style: TextStyle(color: Colors.white, fontSize: 18,fontFamily: 'Lato'),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20), // Space before the divider
              Divider(
                height: 20, // Height of the divider
                color: Colors.white,
                thickness: 2,
              ),
              SizedBox(height: 20), // Space before the button
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xFFD98324), Color(0xFFE43B11)],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        Colors.transparent, // Make the button transparent
                    shadowColor: Colors.transparent, // Remove button shadow
                    minimumSize: Size(double.infinity, 50),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Signupwithmailscreen(),
                      ),
                    );
                  },
                  child: Text(
                    'Sign Up',
                    style: TextStyle(fontSize: 18, color: Colors.white,fontFamily: 'Lato'),
                  ),

                ),
              ),

              SizedBox(height: 80), // Space before the signup text
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don\'t have an account yet? ',
                    style: TextStyle(fontSize: 18, color: Colors.white,fontFamily: 'Lato'),
                  ),
                  TextButton(onPressed: (){ Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Loginwithmailscreen(),
                    ),
                  );}, child: Text('Login',style: TextStyle(fontSize:18,fontFamily: 'Lato'),))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
