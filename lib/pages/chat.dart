import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'homescreen.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () { Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Homepage()),
          );},
          icon: Icon(Icons.arrow_back,color: Colors.white,),
        ),backgroundColor: Colors.transparent,elevation: 0,
        title: Text(
          'Chats',
          style: TextStyle(fontFamily: 'Lato', fontSize: 18,color: Colors.white
          ),
        ),
        actions: [
          Icon(Icons.search,color: Colors.white,)
        ],

      ),
      body:Container(decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('image/1234556.jpeg'), fit: BoxFit.cover)),
      ));
  }
}
