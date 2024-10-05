import 'package:flutter/material.dart';
import 'package:influence_app/pages/ActorsScreen.dart';

import 'SportsScreen.dart';
import 'categorypage.dart';

class MusicDetailsScreen extends StatefulWidget {
  const MusicDetailsScreen({super.key});

  @override
  State<MusicDetailsScreen> createState() => _MusicDetailsScreenState();
}

class _MusicDetailsScreenState extends State<MusicDetailsScreen> {
  final List<Map<String, String>> categories = [
    {'name': 'D S P', 'image': 'image/img_38.png'},
    {'name': 'harris ', 'image': 'image/img_39.png'},
    {'name': 'vijay antony', 'image': 'image/img_40.png'},
    {'name': 'AR Rahman', 'image': 'image/img_41.png'},
    {'name': 'shankar\n Mahadevan', 'image': 'image/img_42.png'},
    {'name': 'vijay \nshankar', 'image': 'image/img_43.png'},
    {'name': 'vijay jesudas', 'image': 'image/img_44.png'},
    {'name': 'sriram', 'image': 'image/img_45.png'},
    {'name': 'anirudh', 'image': 'image/img_46.png'},
    {'name': 'arjith singh', 'image': 'image/img_47.png'},
    {'name': 'udit narayanan', 'image': 'image/img_48.png'},
    {'name': 'pradeep', 'image': 'image/img_49.png'},
  ];

  void navigateToDetailPage(String categoryName) {
    if (categoryName == 'Sports') {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => SportsDetailsScreen(),
        ),
      );
    } else if (categoryName == 'Music') {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => MusicDetailsScreen(),
        ),
      );
    } else if (categoryName == 'Actors') {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ActorsDetailsScreen(),
        ),
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
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      Categoryscreen()), // Navigate to Categoryscreen
            );
          },
        ),
        backgroundColor: Colors.transparent,
        title: Text(
          'Music',
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              fontFamily: 'Lato',
              color: Colors.white),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('image/1234556.jpeg'), // Corrected path
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, // Number of columns
              crossAxisSpacing: 10.0, // Horizontal spacing
              mainAxisSpacing: 10.0, // Vertical spacing
              childAspectRatio: 1 / 2, // Aspect ratio of the grid items
            ),
            itemCount: categories.length, // Number of items
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () => navigateToDetailPage(categories[index]['name']!),
                child: Card(
                  elevation: 4.0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Image.asset(
                          categories[index]['image']!, // Image path
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          categories[index]['name']!, // Category name
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              fontFamily: 'Lato'),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
