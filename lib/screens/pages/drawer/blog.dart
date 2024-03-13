import 'package:flutter/material.dart';

class BlogPage extends StatefulWidget {
  const BlogPage({super.key});

  @override
  State<BlogPage> createState() => _BlogPageState();
}

class _BlogPageState extends State<BlogPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        foregroundColor: Colors.white,
        title: const Text('Blogs'),
      ),
      body: Container(
          color: Colors.grey[350],
          child: const Center(
              child: Text(
            'BLOG PAGE',
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontFamily: 'IBMPlexSans',
            ),
          ))),
    );
  }
}
