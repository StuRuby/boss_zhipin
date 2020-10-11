import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_marker_popup/flutter_map_marker_popup.dart';
import 'package:latlong/latlong.dart';

import 'package:boss_zhipin/widgets/map_popup.dart';

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
                center: new LatLng(31.299305, 120.531441),
                zoom: 13.0,
                interactive: false,
                plugins: [PopupMarkerPlugin()],
              ),
              layers: [
                new TileLayerOptions(
                    urlTemplate:
                        'http://webrd0{s}.is.autonavi.com/appmaptile?lang=zh_cn&size=1&scale=1&style=8&x={x}&y={y}&z={z}',
                    subdomains: ['1', '2', '3', '4']),
                PopupMarkerLayerOptions(
                  markers: [
                    Marker(
                      point: new LatLng(31.299305, 120.531441),
                      width: 40.0,
                      height: 40.0,
                      builder: (_) => Icon(
                        Icons.location_on,
                        color: Colors.blue,
                        size: 40.0,
                      ),
                    )
                  ],
                  popupSnap: PopupSnap.top,
                  popupController: PopupController(),
                  popupBuilder: (BuildContext context, Marker marker) =>
                      MapPopup(),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
