import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapaPage extends StatefulWidget {
  MapaPage({Key? key}) : super(key: key);

  @override
  State<MapaPage> createState() => _MapaPageState();
}

class _MapaPageState extends State<MapaPage> {
  Completer<GoogleMapController> _controller = Completer();

  final Marker _kGooglePlaceMarker = Marker(
      markerId: MarkerId("markerid1"),
      infoWindow: InfoWindow(title: "Lugar #1"),
      icon: BitmapDescriptor.defaultMarker,
      position: LatLng(0.798546, -77.715149));
  final Marker _kGooglePlaceMarker2 = Marker(
      markerId: MarkerId("markerid2"),
      infoWindow: InfoWindow(title: "Lugar #2"),
      icon: BitmapDescriptor.defaultMarker,
      position: LatLng(0.814057, -77.732639));
  final Marker _kGooglePlaceMarker3 = Marker(
      markerId: MarkerId("markerid3"),
      infoWindow: InfoWindow(title: "Lugar #3"),
      icon: BitmapDescriptor.defaultMarker,
      position: LatLng(0.824427, -77.701020));
  final Marker _kGooglePlaceMarker4 = Marker(
      markerId: MarkerId("markerid4"),
      infoWindow: InfoWindow(title: "Lugar #4"),
      icon: BitmapDescriptor.defaultMarker,
      position: LatLng(0.820138, -77.716389));

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(0.797655, -77.717313),
    zoom: 12.60,
  );
  static Polygon _kpolugon = Polygon(
      polygonId: PolygonId("kpolygon"),
      points: [
        LatLng(0.8394679, -77.7182923),
        LatLng(0.7896911, -77.7605210),
        LatLng(0.7706384, -77.7260171),
        LatLng(0.8214453, -77.6707421),
        LatLng(0.8394679, -77.7177773),
      ],
      fillColor: Colors.transparent,
      strokeWidth: 1);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              "Lugares mas cocurridos de los animales sin hogar",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
            ),
          ),
          Icon(
            Icons.pets,
            color: Color.fromARGB(255, 201, 179, 64),
          ),
          SizedBox(
            height: 10,
          ),
          Flexible(
            child: GoogleMap(
              mapType: MapType.normal,
              initialCameraPosition: _kGooglePlex,
              onMapCreated: (GoogleMapController controller) {
                _controller.complete(controller);
              },
              polygons: {_kpolugon},
              markers: {
                _kGooglePlaceMarker,
                _kGooglePlaceMarker2,
                _kGooglePlaceMarker3,
                _kGooglePlaceMarker4
              },
            ),
          ),
        ],
      ),
    );
  }
}
