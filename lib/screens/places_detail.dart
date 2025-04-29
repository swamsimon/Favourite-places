import 'package:favourite_places/models/places.dart';

import 'package:flutter/material.dart';

class PlacesDetailScreen extends StatelessWidget {
  final Places place;
  const PlacesDetailScreen({super.key, required this.place});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(place.title)),
      body: Text(
        place.title,
        style: Theme.of(context).textTheme.titleMedium!.copyWith(
          color: Theme.of(context).colorScheme.onPrimary,
        ),
      ),
    );
  }
}
