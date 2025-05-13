import 'package:favourite_places/models/places.dart';
import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path_provider/path_provider.dart' as syspaths;
import 'package:path/path.dart' as path;

class UserPlacesNotifier extends StateNotifier<List<Places>> {
  UserPlacesNotifier() : super(const []);

  void addPlace(String title, File image, Placelocation location) async {
    final appDir = await syspaths.getApplicationDocumentsDirectory();
    final fileName = path.basename(image.path);
    final copiedImage = await image.copy('${appDir.path}/$fileName');
    //copying the image to the app directory

    final newPlaces = Places(
      title: title,
      image: copiedImage,
      location: location,
    );
    state = [newPlaces, ...state];
  }
}

final userPlacesNotifier =
    StateNotifierProvider<UserPlacesNotifier, List<Places>>(
      (ref) => UserPlacesNotifier(),
    );
