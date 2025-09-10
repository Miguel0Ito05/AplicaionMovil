import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:aplicacionmovil/widgets/theme_toggle_button.dart';

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
            icon: const Icon(Icons.home),
            onPressed: () {
              Navigator.pushNamed(context, '/inicio');
            },
          ),
        ],
      ),

      body: Stack(
        children: [
          // El mapa
          GoogleMap(
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

          // Botón modo oscuro
          const Positioned(top: 70, right: 20, child: ThemeToggleButton()),
        ],
      ),
    );
  }
}
