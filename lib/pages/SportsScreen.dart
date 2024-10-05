import 'package:flutter/material.dart';
import 'package:influence_app/pages/pvsindhudetails.dart'; // Import PVSindhuDetailsScreen
import 'ActorsScreen.dart';
import 'categorypage.dart';
import 'musicscreen.dart'; // Import MusicScreen

class SportsDetailsScreen extends StatefulWidget {
  const SportsDetailsScreen({super.key});

  @override
  State<SportsDetailsScreen> createState() => _SportsDetailsScreenState();
}

class _SportsDetailsScreenState extends State<SportsDetailsScreen> {
  final List<Map<String, String>> categories = [
    {'name': 'P.V.\nSindhu', 'image': 'image/img_23.png'},
    {'name': 'Vinesh\nPhogat', 'image': 'image/img_24.png'},
    {'name': 'Apurvi\nChandela', 'image': 'image/img_25.png'},
    {'name': 'Neeraj\nChopra', 'image': 'image/img_26.png'},
    {'name': 'Smriti\nMandhana', 'image': 'image/img_27.png'},
    {'name': 'Hardik\nPandya', 'image': 'image/img_36.png'},
    {'name': 'Mary Kom', 'image': 'image/img_29.png'},
    {'name': 'Rohit\nSharma', 'image': 'image/img_30.png'},
    {'name': 'Sunil', 'image': 'image/img_31.png'},
    {'name': 'Jadeja', 'image': 'image/img_37.png'},
    {'name': 'Ms Dhoni', 'image': 'image/img_33.png'},
    {'name': 'Virat Kohli', 'image': 'image/img_35.png'},
  ];

  void navigateToDetailPage(String categoryName) {
    if (categoryName.contains('P.V.')) {
      // Navigate to PVSindhuDetailsScreen when P.V.Sindhu is clicked
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const SindhuDetailsScreen(),
        ),
      );
    } else if (categoryName == 'Sports') {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const SportsDetailsScreen(),
        ),
      );
    } else if (categoryName == 'Music') {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const MusicDetailsScreen(),
        ),
      );
    } else if (categoryName == 'Actors') {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const ActorsDetailsScreen(),
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
                  builder: (context) => const Categoryscreen()), // Navigate to CategoryScreen
            );
          },
        ),
        backgroundColor: Colors.transparent,
        title: const Text(
          'Sports',
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              fontFamily: 'Lato',
              color: Colors.white),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
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
                          fontFamily: 'Lato',
                          color: Colors.white, // Set text color to white
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
