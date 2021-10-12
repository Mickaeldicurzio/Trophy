import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong/latlong.dart' as lat_lng;
import 'package:trophy/components/_maptargetbutton.dart';
import 'package:trophy/components/_searchbarwidget.dart';

class MapWidget extends StatefulWidget {
  const MapWidget({Key? key}) : super(key: key);

  @override
  _MapWidgetState createState() => _MapWidgetState();
}

class _MapWidgetState extends State<MapWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Stack(children: [
        FlutterMap(
          options: MapOptions(
            center: lat_lng.LatLng(51.5, -0.09),
            zoom: 13.0,
          ),
          layers: [
            TileLayerOptions(
              urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
              subdomains: ['a', 'b', 'c'],
              backgroundColor: Colors.black,
              // attributionBuilder: (_) {
              //return const Text("© OpenStreetMap contributors");
              //},
            ),
            MarkerLayerOptions(
              markers: [
                Marker(
                  width: 80.0,
                  height: 80.0,
                  point: lat_lng.LatLng(51.5, -0.09),
                  builder: (ctx) => const FlutterLogo(),
                ),
              ],
            ),
          ],
        ),
        const Positioned(top: 20, child: SearchBarWidget()),
      ]),
      floatingActionButton: const MapTargetButton(),
    ));
  }
}
