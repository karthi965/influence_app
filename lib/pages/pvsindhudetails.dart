import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

import 'notification.dart';
import 'notification_maneger.dart';

class SindhuDetailsScreen extends StatefulWidget {
  const SindhuDetailsScreen({Key? key}) : super(key: key);

  @override
  State<SindhuDetailsScreen> createState() => _SindhuDetailsScreenState();
}

class _SindhuDetailsScreenState extends State<SindhuDetailsScreen> {
  final List<Map<String, String>> categories = [
    {'name': 'Music Concert', 'image': 'image/img_63.png', 'rate': 'Rs.10000'},
    {'name': 'Private Party', 'image': 'image/img_64.png', 'rate': 'Rs.10000'},
    {'name': 'College Concert', 'image': 'image/img_65.png', 'rate': 'Rs.10000'},
  ];

  final String content =
      'Pusarla Venkata Sindhu (born 5 July 1995) is an Indian badminton player...';

  bool requestSent = false; // Track request status

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text('Sindhu Details', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('image/1234556.jpeg'),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Stack(
                  children: [
                    Container(
                      height: 300,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('image/img_62.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 100,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('image/img_66.png'),
                    ),
                    const Text('American Eagle Eye Band',
                        style: TextStyle(fontSize: 18, color: Colors.white)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ReadMoreText(
                  content,
                  trimLines: 3,
                  textAlign: TextAlign.justify,
                  trimMode: TrimMode.Line,
                  trimCollapsedText: 'Show More',
                  trimExpandedText: 'Show Less',
                  moreStyle: const TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                  style: const TextStyle(
                      fontSize: 16, height: 1.5, color: Colors.white),
                  lessStyle: const TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 300,
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
                        onTap: () {
                          // Implement your navigation logic if needed
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Image.asset(
                                categories[index]['image']!,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                categories[index]['name']!,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Colors.white),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                categories[index]['rate']!,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
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
                      backgroundColor: Colors.transparent,
                      shadowColor: Colors.transparent,
                      minimumSize: const Size(double.infinity, 10),
                    ),
                    onPressed: requestSent ? null : () {
                      setState(() {
                        requestSent = true; // Change request status
                      });
                      NotificationManager.message = 'P.V.Sindhu has accepted your request';
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => const NotifiScreen()),
                      // );
                    },
                    child: Text(
                      requestSent ? 'Requested' : 'Send Request',
                      style: const TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
