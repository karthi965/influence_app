import 'package:flutter/material.dart';
import 'package:influence_app/pages/ActorsScreen.dart';
import 'package:influence_app/pages/Forgotscreen.dart';
import 'package:influence_app/pages/Signupwithmail.dart';
import 'package:influence_app/pages/SportsScreen.dart';
import 'package:influence_app/pages/categorypage.dart';
import 'package:influence_app/pages/chat.dart';
import 'package:influence_app/pages/create_page.dart';
import 'package:influence_app/pages/drawer.dart';
import 'package:influence_app/pages/drawer2.dart';
import 'package:influence_app/pages/homescreen.dart';
import 'package:influence_app/pages/indicator.dart';
import 'package:influence_app/pages/login_with_google.dart';
import 'package:influence_app/pages/loginwithmail.dart';
import 'package:influence_app/pages/musicscreen.dart';
import 'package:influence_app/pages/notification.dart';
import 'package:influence_app/pages/otp_screen.dart';
import 'package:influence_app/pages/payment%20screen.dart';
import 'package:influence_app/pages/pvsindhudetails.dart';
import 'package:influence_app/pages/setting_page.dart';
import 'package:influence_app/pages/signup_google.dart';
import 'package:influence_app/pagesample/Login.dart';
import 'package:influence_app/pagesample/register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),

      //home: Loginandgooglescreen(),
      home: RegisterPage(),
    );
  }
}
