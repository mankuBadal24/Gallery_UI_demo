import 'package:flutter/material.dart';

class GalleryDemo extends StatefulWidget {
  const GalleryDemo({super.key});

  @override
  State<GalleryDemo> createState() => _GalleryDemoState();
}

class _GalleryDemoState extends State<GalleryDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Gallery Demo',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w800,
            fontStyle: FontStyle.italic,
          ),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.blue[700],
        centerTitle: true,
      ),
      body: GridView.count(crossAxisCount: 2,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              'assets/gallery/image_1.jpg',
              height: 100,
              width: 100,
              fit: BoxFit.fill,
            ),
          ),
          Padding(padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            'assets/gallery/image_2.jpg',
            height: 100,
            width: 100,
            fit: BoxFit.fill,
          ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              'assets/gallery/image_3.jpg',
              height: 100,
              width: 100,
              fit: BoxFit.fill,
            ),
          ),         Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              'assets/gallery/image_4.jpg',
              height: 100,
              width: 100,
              fit: BoxFit.fill,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              'assets/gallery/image_5.jpg',
              height: 100,
              width: 100,
              fit: BoxFit.fill,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              'assets/gallery/image_2.jpg',
              height: 100,
              width: 100,
              fit: BoxFit.fill,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              'assets/gallery/image_3.jpg',
              height: 100,
              width: 100,
              fit: BoxFit.fill,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              'assets/gallery/image_4.jpg',
              height: 100,
              width: 100,
              fit: BoxFit.fill,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              'assets/gallery/image_5.jpg',
              height: 100,
              width: 100,
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),
    );
  }
}
