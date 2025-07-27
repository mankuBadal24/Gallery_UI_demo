import 'package:flutter/material.dart';

class ImageDesc extends StatefulWidget {
  const ImageDesc({super.key});

  @override
  State<ImageDesc> createState() => _ImageDescState();
}

class _ImageDescState extends State<ImageDesc> {
  final List<String> images = [
    'assets/gallery/image_1.jpg',
    'assets/gallery/image_2.jpg',
    'assets/gallery/image_2.jpg',
    'assets/gallery/image_2.jpg',
    'assets/gallery/image_3.jpg',
    'assets/gallery/image_3.jpg',
    'assets/gallery/image_3.jpg',
    'assets/gallery/image_4.jpg',

  ];

  void _openImageSlider(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          child: SizedBox(
            height: 400,
            child: PageView.builder(
              itemCount: images.length,
              itemBuilder: (context, index) {
                return Image.asset(
                  images[index],
                  fit: BoxFit.cover,
                );
              },
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Image with Description',
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
        child: Card(
          elevation: 5,
          margin: const EdgeInsets.all(12),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: List.generate(images.length > 2 ? 2 : images.length, (index) {
                    return Stack(
                      children: [
                        Container(
                          margin: const EdgeInsets.all(8),
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                              image: AssetImage(images[index]),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        if (index == 1 && images.length > 2)
                          GestureDetector(
                            onTap: () => _openImageSlider(context),
                            child: Container(
                              margin: const EdgeInsets.all(8),
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                color: Colors.black54,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Center(
                                child: Text(
                                  "+${images.length - 2} more",
                                  style: const TextStyle(color: Colors.white, fontSize: 16),
                                ),
                              ),
                            ),
                          ),
                      ],
                    );
                  }),
                ),
                const SizedBox(height: 12),
                const Text(
                  "Description:",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 6),
                const Text(
                  "This is a beautiful collection of moments. Click on +more to explore all images.",
                  style: TextStyle(fontSize: 14),
                ),
                SizedBox(height: 12),
                Row(
                  children: List.generate(images.length > 2 ? 2 : images.length, (index) {
                    return Stack(
                      children: [
                        Container(
                          margin: const EdgeInsets.all(8),
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                              image: AssetImage(images[index]),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        if (index == 1 && images.length > 2)
                          GestureDetector(
                            onTap: () => _openImageSlider(context),
                            child: Container(
                              margin: const EdgeInsets.all(8),
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                color: Colors.black54,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Center(
                                child: Text(
                                  "+${images.length - 2} more",
                                  style: const TextStyle(color: Colors.white, fontSize: 16),
                                ),
                              ),
                            ),
                          ),
                      ],
                    );
                  }),
                ),
                const SizedBox(height: 12),
                const Text(
                  "Description:",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 6),
                const Text(
                  "This is a beautiful collection of moments. Click on +more to explore all images.",
                  style: TextStyle(fontSize: 14),
                ),
              ],
            ),
          ),

        ),
      ),
    );
  }
}
