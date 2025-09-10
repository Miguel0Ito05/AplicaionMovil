import 'package:aplicacionmovil/pages/inicio/widget_inicio/inicio_form.dart';
import 'package:aplicacionmovil/widgets/theme_toggle_button.dart';
import 'package:flutter/material.dart';

class Inicio extends StatelessWidget {
  const Inicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Fondo
          Image.asset(
            'assets/pru.jpg',
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),

          // Botón de tema arriba a la derecha
          const Positioned(top: 40, right: 20, child: ThemeToggleButton()),

          // Formulario centrado
          const Center(child: InicioForm()),
        ],
      ),
    );
  }
}
