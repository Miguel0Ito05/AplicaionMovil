import 'package:flutter/material.dart';
import 'package:aplicacionmovil/widgets/auth_card.dart';
import 'package:aplicacionmovil/widgets/custom_text_field.dart';
import 'package:aplicacionmovil/widgets/primary_button.dart';
import 'package:aplicacionmovil/widgets/secondary_button.dart';

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
    return AuthCard(
      title: "REGISTRO",
      children: [
        CustomTextField(controller: nombreController, hintText: "Nombre"),
        const SizedBox(height: 15),

        CustomTextField(controller: emailController, hintText: "Correo"),
        const SizedBox(height: 15),

        CustomTextField(
          controller: passwordController,
          hintText: "Contraseña",
          obscureText: true,
        ),
        const SizedBox(height: 20),

        //  botón primario
        PrimaryButton(text: "REGISTRAR", onPressed: onSubmit),
        const SizedBox(height: 15),

        // botón secundario
        SecondaryButton(text: "VOLVER", onPressed: onBack),
      ],
    );
  }
}
