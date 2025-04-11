import 'package:uuid/uuid.dart';

const uuid = Uuid();

class Places {
  final String id;
  final String title;

  Places({required this.title}) : id = uuid.v4();
}

//dynamic id for places 
//v4 for random id
//v1 for timebased id