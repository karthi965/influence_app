import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:influence_app/pages/homescreen.dart';
import 'ActorsScreen.dart'; // Ensure this file exists
import 'SportsScreen.dart'; // Ensure this file exists
import 'musicscreen.dart'; // Ensure this file exists
import 'dart:ui'; // Import this for BackdropFilter

class Categoryscreen extends StatefulWidget {
  const Categoryscreen({super.key});

  @override
  State<Categoryscreen> createState() => _CategoryscreenState();
}

class _CategoryscreenState extends State<Categoryscreen> {
  bool hover = true;

  // Sample data for categories and image paths
  final List<Map<String, String>> categories = [
    {'name': 'Sports', 'image': 'image/img_12.png'},
    {'name': 'Music', 'image': 'image/img_13.png'},
    {'name': 'Actors', 'image': 'image/img_14.png'},
    {'name': 'Youtube\ninfluencers', 'image': 'image/img_15.png'},
    {'name': 'Dancers', 'image': 'image/img_16.png'},
    {'name': 'Cricket', 'image': 'image/img_17.png'},
    {'name': 'Social Media', 'image': 'image/img_18.png'},
    {'name': 'Directors', 'image': 'image/img_19.png'},
    {'name': 'Photographer', 'image': 'image/img_20.png'},
    {'name': 'Traveller', 'image': 'image/img_21.png'},
    {'name': 'Businessman', 'image': 'image/img_22.png'},
    {'name': 'Fitness', 'image': 'image/img_9.png'},
  ];

  void navigateToDetailPage(String categoryName) {
    if (categoryName == 'Sports') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => SportsDetailsScreen()),
      );
    } else if (categoryName == 'Music') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => MusicDetailsScreen()),
      );
    } else if (categoryName == 'Actors') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ActorsDetailsScreen()),
      );
    }
    // Add more navigation options for other categories if needed
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Homepage()),
            );
          },
        ),
        backgroundColor: Colors.transparent,
        title: const Text(
          'Browse By Category',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
              fontFamily: 'Lato',
              color: Colors.white),
        ),
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('image/1234556.jpeg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
            child: Container(
              color:
                  Colors.black.withOpacity(0.5), // Semi-transparent background
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: MouseRegion(
              onEnter: (h) {
                setState(() {
                  hover = false;
                });
              },
              onExit: (h) {
                setState(() {
                  hover = true;
                });
              },
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,
                  childAspectRatio: 1 / 2,
                ),
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () =>
                        navigateToDetailPage(categories[index]['name']!),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Image.asset(
                            categories[index]['image']!,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            categories[index]['name']!,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.white, // Set text color to white
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
