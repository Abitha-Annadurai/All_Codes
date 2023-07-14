import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';

class userScreen extends StatefulWidget {
  const userScreen({Key? key}) : super(key: key);

  @override
  State<userScreen> createState() => _userScreenState();
}

class _userScreenState extends State<userScreen> {
  GoogleMapController? googleMapController;
  static CameraPosition initialCameraPosition = CameraPosition(target: LatLng(11.2279688, 77.6659607),
      zoom: 20, bearing: 192.0, tilt: 60);
  Set<Marker> markers = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(automaticallyImplyLeading: false,title: Text('User Location'),),
      body: GoogleMap(initialCameraPosition: initialCameraPosition,markers: markers,
        //zoomControlsEnabled: false,
        mapType: MapType.satellite,
        onMapCreated: (GoogleMapController controller){googleMapController = controller;},
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () async {Position position = await _determinePosition();
            googleMapController?.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(target: LatLng(
                position.latitude, position.longitude), zoom: 15)));
            markers.clear();
            markers.add(Marker(markerId: MarkerId('currentlocation'), position:LatLng(
                position.latitude, position.longitude) ));
            setState((){});
          },
      child: Icon(Icons.location_history_outlined),),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterFloat,

    );
  }

  Future<Position> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location services are disabled.');
    }
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }
    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }
    return await Geolocator.getCurrentPosition();
  }
}
