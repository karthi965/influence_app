import 'dart:ui';
import 'package:flutter/material.dart';

class Navigate extends StatelessWidget {
  const Navigate({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Stack(
        children: [
          // Background with gradient
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFF260FA8).withOpacity(0.5), // 63% opacity
                  Color(0xFF00033D).withOpacity(0.5), // 0% opacity
                ],
                stops: [0.63, 1.0], // Using normalized stops
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          // Blur effect
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: Container(
              color:
                  Colors.black.withOpacity(0.4), // Semi-transparent background
            ),
          ),
          // Drawer content
          ListView(
            children: [
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color:
                      Colors.transparent, // Make header background transparent
                ),
                accountName: const Text(
                  'Helene Chung',
                  style: TextStyle(
                    color: Colors.white, // Changed text color for visibility
                    fontSize: 20,
                    fontFamily: 'Lato',
                  ),
                ),
                accountEmail: const Text(
                  'Version 1.0',
                  style: TextStyle(
                    color: Colors.white, // Changed text color for visibility
                    fontSize: 15,
                    fontFamily: 'Lato',
                  ),
                ),
                currentAccountPicture: CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.white10,
                  child: ClipOval(
                    child: Image.asset(
                      'image/img.png', // Ensure this path is correct
                      height: 90,
                      width: 90,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              ListTile(
                title: const Text('Profile',
                    style: TextStyle(fontFamily: 'Lato', color: Colors.white)),
                onTap: () {
                  Navigator.pop(context); // Close drawer
                  // Add navigation to profile screen
                },
              ),
              ListTile(
                title: const Text('History',
                    style: TextStyle(fontFamily: 'Lato', color: Colors.white)),
                onTap: () {
                  Navigator.pop(context); // Close drawer
                  // Add navigation to history screen
                },
              ),
              ListTile(
                title: const Text('Wallet',
                    style: TextStyle(fontFamily: 'Lato', color: Colors.white)),
                onTap: () {
                  Navigator.pop(context); // Close drawer
                  // Add navigation to wallet screen
                },
              ),
              ListTile(
                title: const Text('Notification',
                    style: TextStyle(fontFamily: 'Lato', color: Colors.white)),
                onTap: () {
                  Navigator.pop(context); // Close drawer
                  // Add navigation to notification screen
                },
              ),
              ListTile(
                title: const Text('Favorite',
                    style: TextStyle(fontFamily: 'Lato', color: Colors.white)),
                onTap: () {
                  Navigator.pop(context); // Close drawer
                  // Add navigation to favorite screen
                },
              ),
              ListTile(
                title: const Text('Invite Friends',
                    style: TextStyle(fontFamily: 'Lato', color: Colors.white)),
                onTap: () {
                  Navigator.pop(context); // Close drawer
                  // Add navigation to invite friends screen
                },
              ),
              ListTile(
                title: const Text('Search',
                    style: TextStyle(fontFamily: 'Lato', color: Colors.white)),
                onTap: () {
                  Navigator.pop(context); // Close drawer
                  // Add navigation to search screen
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
