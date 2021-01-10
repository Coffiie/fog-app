import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapView extends StatelessWidget {
  final CameraPosition _initialPosition = CameraPosition(target: LatLng(24.8655235,67.0583741),zoom: 15);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nearby Cars"),
        centerTitle: true,
      ),
      body: GoogleMap(initialCameraPosition: _initialPosition,myLocationEnabled: true,myLocationButtonEnabled: true,trafficEnabled: true,buildingsEnabled: false,),
    );
  }
}