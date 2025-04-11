import 'package:favourite_places/screens/add_place.dart';
import 'package:favourite_places/widgets/places_list.dart';
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
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (ctx) => const AddPlaceScreen()),
              );
            },
            icon: Icon(Icons.add),
          ),
        ],
      ),
      body: PlacesListwidget(places: []),
    );
  }
}
