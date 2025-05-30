import 'package:favourite_places/models/places.dart';
import 'package:favourite_places/screens/places_detail.dart';
import 'package:flutter/material.dart';

class PlacesListwidget extends StatelessWidget {
  const PlacesListwidget({super.key, required this.places});

  final List<Places> places;

  @override
  Widget build(BuildContext context) {
    if (places.isEmpty) {
      return Center(
        child: Text(
          'No Places added yet',
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
            color: Theme.of(context).colorScheme.onPrimary,
          ),
        ),
      );
    }

    return ListView.builder(
      itemCount: places.length,
      itemBuilder:
          (ctx, index) => ListTile(
            leading: CircleAvatar(
              radius: 26,
              backgroundImage: FileImage(places[index].image),
            ),
            title: Text(
              places[index].title,

              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                color: Theme.of(context).colorScheme.onSurface,
              ),
            ),
            subtitle: Text(
              places[index].location.address,
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                color: Theme.of(context).colorScheme.onSurface,
              ),
            ),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder:
                      (context) => PlacesDetailScreen(place: places[index]),
                ),
              );
            },
          ),
    );
  }
}
