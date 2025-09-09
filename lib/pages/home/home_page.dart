/*import 'package:flutter/material.dart';
import 'widget_home/search_bar.dart';
import 'widget_home/profile_avatar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Fondo del mapa
          SizedBox.expand(
            child: Image.network(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSbT-cpO_BConn0dH-m2ybbBNT5LUEpgAEUSg&s",
              fit: BoxFit.cover, // Se ajusta al tamaño de la pantalla
            ),
          ),

          // Barra superior
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              child: Row(
                children: const [
                  ProfileAvatar(),
                  SizedBox(width: 12),
                  Expanded(child: SearchBarCustom()),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
*/