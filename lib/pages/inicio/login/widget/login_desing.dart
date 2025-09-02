import 'package:flutter/material.dart';
import 'custom_text_field.dart';

class LoginDesign extends StatelessWidget {
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final VoidCallback onLogin;
  final VoidCallback onBack;

  const LoginDesign({
    super.key,
    required this.emailController,
    required this.passwordController,
    required this.onLogin,
    required this.onBack,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
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
            "INICIAR SESIÓN",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),

          // Campo correo
          CustomTextField(controller: emailController, hintText: "correo"),
          const SizedBox(height: 15),

          // Campo contraseña
          CustomTextField(
            controller: passwordController,
            hintText: "contraseña",
            obscureText: true,
          ),
          const SizedBox(height: 20),

          // Botón iniciar
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: onLogin,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                padding: const EdgeInsets.symmetric(vertical: 15),
              ),
              child: const Text(
                "INICIAR",
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
