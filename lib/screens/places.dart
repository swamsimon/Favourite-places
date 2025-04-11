import 'package:flutter/material.dart';

class PlacesScreenlist extends StatefulWidget {
  const PlacesScreenlist({super.key});

  @override
  State<PlacesScreenlist> createState() => _PlacesScreenlistState();
}

class _PlacesScreenlistState extends State<PlacesScreenlist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Places'),
        actions: [
          IconButton(onPressed: () {}, 
          icon: Icon(Icons.add))],
      ),
      body: Center(child: Text('')),
    );
  }
}
