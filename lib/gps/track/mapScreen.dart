import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class mapScreen extends StatefulWidget {
  const mapScreen({Key? key}) : super(key: key);

  @override
  State<mapScreen> createState() => _mapScreenState();
}

class _mapScreenState extends State<mapScreen> {
  final Completer<GoogleMapController> _controller = Completer();
  static const CameraPosition initialPosition = CameraPosition(target: LatLng(37.42796133580664, -122.085749655962),
      zoom: 14.0);
  static const CameraPosition targetPosition = CameraPosition(target: LatLng(37.43296265331129, -122.08832357078792),
      zoom: 14.0, bearing: 192.0, tilt: 60);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,title: const Text("Simple Google Map"), centerTitle: true,),
      body: GoogleMap(
        initialCameraPosition: initialPosition, mapType: MapType.normal,
        onMapCreated: (GoogleMapController controller) {_controller.complete(controller);},
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {goToLake();},
       // label: const Text("To the lake!"),
        child: const Icon(Icons.navigation_outlined),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterFloat,
    );  }

  Future<void> goToLake() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(targetPosition));
  }
}
