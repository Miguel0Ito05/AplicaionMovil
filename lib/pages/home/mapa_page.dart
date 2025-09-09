import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapaPage extends StatefulWidget {
  const MapaPage({super.key});

  @override
  State<MapaPage> createState() => _MapaPageState();
}

class _MapaPageState extends State<MapaPage> {
  late GoogleMapController _controller;

  final CameraPosition _initialPosition = const CameraPosition(
    target: LatLng(3.8801, -77.0311), // Buenaventura
    zoom: 14,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mi Mapa Tura"),
        actions: [
          IconButton(
            icon: const Icon(Icons.home), // 🏠 botón en la esquina
            onPressed: () {
              Navigator.pushNamed(context, '/inicio'); // 👈 ir a inicio
            },
          ),
        ],
      ),
      body: GoogleMap(
        initialCameraPosition: _initialPosition,
        onMapCreated: (controller) {
          _controller = controller;
          _controller.animateCamera(
            CameraUpdate.newCameraPosition(_initialPosition),
          );
        },
        myLocationEnabled: false,
        myLocationButtonEnabled: false,
        zoomControlsEnabled: true,
        zoomGesturesEnabled: true,
        markers: {
          const Marker(
            markerId: MarkerId("buenaventura"),
            position: LatLng(3.8801, -77.0311),
            infoWindow: InfoWindow(title: "Buenaventura"),
          ),
        },
      ),
    );
  }
}
