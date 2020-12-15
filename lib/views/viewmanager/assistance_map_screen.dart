import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class AssistanceMapScreen extends StatefulWidget {
  @override
  _AssistanceMapScreenState createState() => _AssistanceMapScreenState();
}

class _AssistanceMapScreenState extends State<AssistanceMapScreen> {
  GoogleMapController mapController;

  Set<Marker> markers = new Set<Marker>();

  double lat;
  double long;

  void _onMapCreated(GoogleMapController controller){
    mapController = controller;

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: GoogleMap(
          onMapCreated: _onMapCreated,

          initialCameraPosition: CameraPosition(
            target: LatLng(-10.1689,-48.3317),
            zoom: 12.0
          ),
        ),
      ),

    );
  }
}

