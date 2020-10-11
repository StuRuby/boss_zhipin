import 'package:flutter/material.dart';
import 'package:mapbox_gl/mapbox_gl.dart';

class Map extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CameraPosition _initPostion = const CameraPosition(
      target: LatLng(30, 120),
      zoom: 11.0,
    );
    final MapboxMap map = MapboxMap(initialCameraPosition: _initPostion);
  }
}
