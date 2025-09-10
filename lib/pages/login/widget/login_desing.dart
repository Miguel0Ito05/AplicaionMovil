import 'package:flutter/material.dart';
import 'package:aplicacionmovil/widgets/auth_card.dart';
import 'package:aplicacionmovil/widgets/custom_text_field.dart';
import 'package:aplicacionmovil/widgets/primary_button.dart';
import 'package:aplicacionmovil/widgets/secondary_button.dart';

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
    return AuthCard(
      title: "INICIAR SESIÓN",
      children: [
        CustomTextField(controller: emailController, hintText: "Correo"),
        const SizedBox(height: 15),

        CustomTextField(
          controller: passwordController,
          hintText: "Contraseña",
          obscureText: true,
        ),
        const SizedBox(height: 20),

        PrimaryButton(text: "INICIAR", onPressed: onLogin),
        const SizedBox(height: 15),

        SecondaryButton(text: "VOLVER", onPressed: onBack),
      ],
    );
  }
}
