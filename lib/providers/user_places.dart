import 'package:favourite_places/models/places.dart';
import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';

class UserPlacesNotifier extends StateNotifier<List<Places>> {
  UserPlacesNotifier() : super(const []);

  void addPlace(String title, File image) {
    final newPlaces = Places(title: title,image: image);
    state = [newPlaces, ...state];
  }
}

final userPlacesNotifier =
    StateNotifierProvider<UserPlacesNotifier, List<Places>>(
      (ref) => UserPlacesNotifier(),
    );
