import 'package:flutter/material.dart';
import 'package:slide_curosal/slide_carousal.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Slide Carousal",
          style: TextStyle(
            color: const Color.fromARGB(255, 255, 255, 255),
            fontWeight: FontWeight.w500,
            fontSize: 25,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 40, 113, 78),
      ),
      body: SlideCarousal(),
    );
    
  }
}
