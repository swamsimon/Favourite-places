import 'package:uuid/uuid.dart';
import 'dart:io';

const uuid = Uuid();

class Places {
  final String id;
  final String title;
  final File image;

  Places({required this.title, required this.image}) : id = uuid.v4();
}

//dynamic id for places 
//v4 for random id
//v1 for timebased id