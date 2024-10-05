import 'package:flutter/material.dart';
import 'package:influence_app/pages/otp_screen.dart';

class Forgotpage extends StatefulWidget {
  const Forgotpage({super.key});

  @override
  State<Forgotpage> createState() => _ForgotpageState();
}

class _ForgotpageState extends State<Forgotpage> {
  final _formKey = GlobalKey<FormState>(); // Key to identify the form
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: Text(
            'Forgot Password',
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontFamily: 'Lato'),
          ),
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          backgroundColor: Colors.transparent,
        ),
        body: Container(
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('image/backgroundpic.jpeg'),
                    fit: BoxFit.cover)),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 100,
                  ),
                  Text(
                    'Enter  Your  Email  Id  For  The   Verification\n Process We Will Send 4 Digit to your email.',
                    style: TextStyle(
                        fontSize: 18, color: Colors.white, fontFamily: 'Lato'),
                  ),
                  SizedBox(height: 30),
                  Text(
                    'Email',
                    style: TextStyle(
                        fontSize: 18, color: Colors.white, fontFamily: 'Lato'),
                  ),
                  SizedBox(height: 8),
                  TextFormField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enter your Email',
                      labelStyle:
                          TextStyle(color: Colors.white, fontFamily: 'Lato'),
                      hintText: 'Enter your Email',
                      hintStyle:
                          TextStyle(color: Colors.white70, fontFamily: 'Lato'),
                    ),
                    keyboardType: TextInputType.emailAddress,
                    style: TextStyle(color: Colors.white),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please Enter your Email';
                      } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+')
                          .hasMatch(value)) {
                        return 'Please Enter a valid Email Address';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 100),
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
                            builder: (context) => OtpPage(),
                          ),
                        );
                      },
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontFamily: 'Lato'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
