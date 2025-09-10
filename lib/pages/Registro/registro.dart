import 'package:aplicacionmovil/widgets/theme_toggle_button.dart';
import 'package:flutter/material.dart';
import 'package:aplicacionmovil/pages/Registro/widget_registro/registro_form.dart';

class Registro extends StatelessWidget {
  const Registro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/pru.jpg',
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),

          // Botón modo oscuro arriba a la derecha
          const Positioned(top: 40, right: 20, child: ThemeToggleButton()),

          const Center(child: RegistroForm()),
        ],
      ),
    );
  }
}
