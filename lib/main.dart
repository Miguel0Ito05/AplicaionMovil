import 'package:flutter/material.dart';
import 'package:aplicacionmovil/pages/home/home_page.dart';
import 'package:aplicacionmovil/pages/inicio/inicio.dart';
import 'package:aplicacionmovil/pages/home/mapa_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/inicio',

      /* routes: {
        '/inicio': (context) => const Inicio(),
        '/home': (context) => const HomePage(),
      },*/
      routes: {
        '/inicio': (context) => const Inicio(),
        '/home': (context) => const MapaPage(), // 👈 aquí va el mapa
      },
    );
  }
}
