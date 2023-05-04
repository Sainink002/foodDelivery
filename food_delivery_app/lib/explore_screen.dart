import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({Key? key}) : super(key: key);

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Explore',
          style: TextStyle(
            color: Colors.white, // set the text color of the app bar title
          ),
        ),
        centerTitle: true, // center the app bar title
        backgroundColor: Colors.orange, // set the background color of the app bar
        elevation: 0, // remove the shadow below the app bar
      ),
    );
  }
}
