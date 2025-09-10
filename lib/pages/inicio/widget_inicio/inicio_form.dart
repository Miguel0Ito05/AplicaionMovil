import 'package:aplicacionmovil/pages/Registro/registro.dart';
import 'package:aplicacionmovil/pages/login/Login.dart';
import 'package:aplicacionmovil/widgets/auth_card.dart';
import 'package:aplicacionmovil/widgets/primary_button.dart';
import 'package:aplicacionmovil/widgets/tertiary_button.dart';
import 'package:flutter/material.dart';

class InicioForm extends StatelessWidget {
  const InicioForm({super.key});

  @override
  Widget build(BuildContext context) {
    return AuthCard(
      title: "BIENVENIDOS",
      children: [
        // Botón Iniciar sesión
        PrimaryButton(
          text: "Iniciar sesión",
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Login()),
            );
          },
        ),
        const SizedBox(height: 20),

        // Botón Registrarse
        PrimaryButton(
          text: "Registrarse",
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Registro()),
            );
          },
        ),
        const SizedBox(height: 20),

        // Botón Iniciar sin registro
        TertiaryButton(
          text: "Iniciar sin registro",
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/home');
          },
        ),
      ],
    );
  }
}
