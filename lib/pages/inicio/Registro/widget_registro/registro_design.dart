//estilo y UI del formulario de registro

import 'package:aplicacionmovil/pages/inicio/login/widget/custom_text_field.dart';
import 'package:flutter/material.dart';

class RegistroDesign extends StatelessWidget {
  final TextEditingController nombreController;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final VoidCallback onSubmit;
  final VoidCallback onBack;

  const RegistroDesign({
    super.key,
    required this.nombreController,
    required this.emailController,
    required this.passwordController,
    required this.onSubmit,
    required this.onBack,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 8,
            offset: const Offset(2, 4),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            "REGISTRO",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),

          // Campo nombre
          CustomTextField(controller: nombreController, hintText: "Nombre"),
          const SizedBox(height: 15),

          // Campo correo
          CustomTextField(
            controller: emailController,
            hintText: "Correo electrónico",
          ),
          const SizedBox(height: 15),

          // Campo contraseña
          CustomTextField(
            controller: passwordController,
            hintText: "Contraseña",
            obscureText: true,
          ),
          const SizedBox(height: 20),

          // Botón registrarse
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: onSubmit,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                padding: const EdgeInsets.symmetric(vertical: 15),
              ),
              child: const Text(
                "REGISTRARSE",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          ),
          const SizedBox(height: 15),

          // Botón volver
          TextButton(
            onPressed: onBack,
            child: const Text(
              "VOLVER",
              style: TextStyle(color: Colors.blue, fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}
