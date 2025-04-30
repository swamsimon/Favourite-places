import 'package:favourite_places/providers/user_places.dart';
import 'package:favourite_places/screens/add_place.dart';
import 'package:favourite_places/widgets/places_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PlacesScreenlist extends ConsumerWidget {
  const PlacesScreenlist({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final userPlaces = ref.watch(userPlacesNotifier);
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: PlacesListwidget(places: userPlaces),
      ),
    );
  }
}
