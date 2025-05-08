import 'dart:ffi';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:favourite_places/models/places.dart';
import 'package:flutter/material.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({
    super.key,
    this.location = const Placelocation(
      address: '',
      latitude: 37.422,
      longitude: -122.084,
    ),
    this.isSelecting = true,
  });

  final Placelocation location;
  final bool isSelecting;
  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.isSelecting ? 'Pick your location' : 'Your location',
        ),
        actions: [
          if (widget.isSelecting)
            IconButton(icon: Icon(Icons.save), onPressed: () {}),
        ],
      ),
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: LatLng(widget.location.latitude, widget.location.longitude),
          zoom: 16,
        ),
        markers: {
          Marker(
            markerId: MarkerId('m1'),
            position: LatLng(
              widget.location.latitude,
              widget.location.longitude,
            ),
          ),
        },
      ),
    );
  }
}
