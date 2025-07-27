import 'package:flutter/material.dart';
import 'package:gallery_app/Dashboard_Screens/ChatBot_screen.dart';
import 'package:gallery_app/Dashboard_Screens/Gallery_demo.dart';
import 'package:gallery_app/Dashboard_Screens/Image_desc.dart';
import 'package:gallery_app/Dashboard_Screens/List_demo.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Dashboard',
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w800,
              fontStyle: FontStyle.italic),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.blue[700],
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [Colors.blue, Colors.purple]),
        ),
        child: Center(
          child: Card(
            elevation: 8,
            margin: const EdgeInsets.all(16),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
                side: BorderSide(
                  color: Colors.blueAccent,
                  width: 3
                )
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  GridView.count(
                    shrinkWrap: true,
                    crossAxisCount: 2,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 12,
                    childAspectRatio: 1,
                    physics: const NeverScrollableScrollPhysics(),
                    children: cardData.map((card) {
                      return GestureDetector(
                        onTap: card['onTap'],
                        child: Card(
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                            side: BorderSide(
                                color: Colors.black54,
                                width:2
                            )
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                card['image'],
                                height: 60,
                                width: 60,
                                fit: BoxFit.cover,
                              ),
                              const SizedBox(height: 10),
                              Text(
                                card['title'],
                                style: const TextStyle(
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  final List<Map<String, dynamic>> cardData = [];

  @override
  void initState() {
    super.initState();

    cardData.addAll([
      {
        'image': "assets/images/clipboard.png",
        'title': 'ListView',
        'onTap': () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ListDemo()),
          );
        },
      },
      {
        'image': 'assets/images/gallery.png',
        'title': 'Gallery',
        'onTap': () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const GalleryDemo()),
          );
        },
      },
      {
        'image': 'assets/images/image-gallery.png',
        'title': 'Image Description',
        'onTap': () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ImageDesc()),
          );
        },
      },
      {
        'image': 'assets/images/live-chat.png',
        'title': 'ChatBot',
        'onTap': () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ChatScreen()),
          );
        },
      },
    ]);
  }
}
