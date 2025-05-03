import 'package:uuid/uuid.dart';
import 'dart:io';

const uuid = Uuid();

class Placelocation {
  Placelocation({
    required this.address,
    required this.latitude,
    required this.longitude,
  });

  final double latitude;
  final double longitude;
  final String address;
}
//saving the location data in the model

class Places {
  final String id;
  final String title;
  final File image;
  final Placelocation location;

  Places({required this.title, required this.image, required this.location})
    : id = uuid.v4();
}

//dynamic id for places 
//v4 for random id
//v1 for timebased id