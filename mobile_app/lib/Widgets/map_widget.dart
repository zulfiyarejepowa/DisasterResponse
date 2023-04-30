import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_location_marker/flutter_map_location_marker.dart';
import 'package:latlong2/latlong.dart';

class MapWidget extends StatefulWidget {
  final double firstLoc;
  final double secondLoc;
  final double thirdLoc;
  final double forthLoc;
  final double fifthLoc;
  final double sixLoc;
  const MapWidget({super.key, required this.firstLoc, required this.secondLoc, required this.thirdLoc, required this.forthLoc, required this.fifthLoc, required this.sixLoc});

  @override
  State<MapWidget> createState() => _MapWidgetState();
}

class _MapWidgetState extends State<MapWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      width: MediaQuery.of(context).size.width,
      child: FlutterMap(
        options: MapOptions(
            center: LatLng(widget.firstLoc, widget.secondLoc),
            zoom: 11,
            interactiveFlags: InteractiveFlag.drag | InteractiveFlag.doubleTapZoom | InteractiveFlag.pinchZoom
          ),
        nonRotatedChildren: [
          AttributionWidget.defaultWidget(
            source: 'OpenStreetMap contributors',
            onSourceTapped: null,
          ),
          MarkerLayer(
            markers: [
              Marker(
                point: LatLng(widget.firstLoc, widget.secondLoc),
                // point: LatLng(37.862499, 58.238056),
                builder: (context) => Icon(
                  Icons.location_on,
                  color: Color(0xFF17797C),
                ),
              ),
              Marker(
                point: LatLng(widget.thirdLoc, widget.forthLoc),
                // point: LatLng(37.862499, 58.238056),
                builder: (context) => Icon(
                  Icons.location_on,
                  color: Color(0xFF17797C),
                ),
              ),
              Marker(
                point: LatLng(widget.fifthLoc, widget.sixLoc),
                // point: LatLng(37.862499, 58.238056),
                builder: (context) => Icon(
                  Icons.location_on,
                  color: Color(0xFF17797C),
                ),
              ),
            ],
          )
        ],
        children: [
          TileLayer(
            urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
            userAgentPackageName: 'com.example.app',
          ),
          ],
      ),
    );
  }
}
