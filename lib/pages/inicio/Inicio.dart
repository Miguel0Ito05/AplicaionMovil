import 'package:aplicacionmovil/pages/inicio/widget_inicio/inicio_form.dart';
import 'package:flutter/material.dart';

class Inicio extends StatelessWidget {
  const Inicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Image.asset(
              'assets/pru.jpg',
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
            Container(child: Column(children: [])),

            const Center(child: InicioForm()),
          ],
        ),
      ),
    );
  }
}
