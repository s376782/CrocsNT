import 'package:crocsnt/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  late GoogleMapController mapController;

  final LatLng _center = const LatLng(45.521563, -122.677433);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  void _showWarningDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.red,
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'CROCODILE WARNING!',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              const Text(
                'You are very close to the crocodile area. Proceed with caution and be Crocwise.\n\n'
                'Risk Level: High\n\n'
                'Stay away from the water’s edge and follow all safety guidelines. Crocodiles may be present, and encounters can be dangerous.',
                style: TextStyle(color: Colors.white),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                style: ElevatedButton.styleFrom(foregroundColor: Colors.red, backgroundColor: Colors.white),
                child: const Text('OK'),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GoogleMap(
          onMapCreated: _onMapCreated,
          initialCameraPosition: CameraPosition(
            target: _center,
            zoom: 11.0,
          ),
        ),
        const SafeArea(
          child: Padding(
            padding: EdgeInsets.all(Constants.defaultPadding),
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.all(Radius.circular(50))
                ),
                hintText: 'Search location',
                prefixIcon: Padding(
                  padding: EdgeInsets.symmetric(vertical: Constants.defaultPadding * 0.75),
                  child: Icon(Icons.search),
                )
              ),
            )
          )
        ),
        Positioned(
            bottom: 200,
            right: 200,
            child: FloatingActionButton(
              backgroundColor: const Color.fromRGBO(246, 17, 1, 1).withOpacity(0.5),
              onPressed: _showWarningDialog, // Show dialog when button is pressed
              child: const Icon(Icons.warning, color: Colors.white),
            ),
        ),
      ],
    );
  }
}
