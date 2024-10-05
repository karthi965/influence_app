import 'package:flutter/material.dart';
import 'package:influence_app/pages/SportsScreen.dart';
import 'package:influence_app/pages/musicscreen.dart';

import 'categorypage.dart';

class ActorsDetailsScreen extends StatefulWidget {
  const ActorsDetailsScreen({super.key});

  @override
  State<ActorsDetailsScreen> createState() => _ActorsDetailsScreenState();
}

class _ActorsDetailsScreenState extends State<ActorsDetailsScreen> {
  final List<Map<String, String>> categories = [
    {'name': 'kamal', 'image': 'image/img_50.png'},
    {'name': 'maddy', 'image': 'image/img_51.png'},
    {'name': 'sidharth', 'image': 'image/img_52.png'},
    {'name': 'adharva', 'image': 'image/img_53.png'},
    {'name': 'dq salman', 'image': 'image/img_54.png'},
    {'name': 'Rajinikanth', 'image': 'image/img_55.png'},
    {'name': 'simbu', 'image': 'image/img_56.png'},
    {'name': 'jeyam ravi', 'image': 'image/img_57.png'},
    {'name': 'vikram', 'image': 'image/img_58.png'},
    {'name': 'siva karthikeyan', 'image': 'image/img_59.png'},
    {'name': 'vishal', 'image': 'image/img_60.png'},
    {'name': 'suriya', 'image': 'image/img_61.png'},
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
        elevation: 0,
        title: Text(
          'Actors',
          style: TextStyle(
              fontSize: 24,
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
                          ),
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
