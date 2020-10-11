import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong/latlong.dart';

class Map extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        new Container(
          margin: const EdgeInsets.only(left: 24.0, right: 24.0),
          height: 200,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: FlutterMap(
              options: new MapOptions(
                center: new LatLng(30.5, 120.09),
                zoom: 13.0,
              ),
              layers: [
                new TileLayerOptions(
                    urlTemplate:
                        "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
                    subdomains: ['a', 'b', 'c']),
                new MarkerLayerOptions(
                  markers: [
                    new Marker(
                      width: 80.0,
                      height: 80.0,
                      point: new LatLng(30.5, 120.09),
                      builder: (ctx) => new Container(
                        child: new FlutterLogo(),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
