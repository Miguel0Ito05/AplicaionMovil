import 'package:flutter/material.dart';
import 'custom_text_field.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  // Controladores para capturar el texto
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    // Liberar memoria al destruir el widget
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  // logica de login
  void _login() {
    String email = emailController.text;
    String password = passwordController.text;

    // datos ingresados
    debugPrint("Correo: $email, Contraseña: $password");

    // hacer validaciones o llamar a  API aquí
    if (email.isEmpty || password.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Por favor ingresa todos los datos")),
      );
    } else {
      // Aquí llamas tu servicio de login
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("Iniciando sesión con $email")));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white.withValues(),
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(),
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

          // boton iniciar
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: _login,
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

          const Text(
            "¿Olvidaste tu contraseña?",
            style: TextStyle(color: Colors.blue, fontSize: 14),
          ),
        ],
      ),
    );
  }
}
