//logica y validaciones del formulario de registro

import 'package:flutter/material.dart';
import 'registro_design.dart';

class RegistroForm extends StatefulWidget {
  const RegistroForm({Key? key}) : super(key: key);

  @override
  State<RegistroForm> createState() => _RegistroFormState();
}

class _RegistroFormState extends State<RegistroForm> {
  final TextEditingController nombreController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    nombreController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  void _submit() {
    String nombre = nombreController.text;
    String email = emailController.text;
    String password = passwordController.text;

    if (nombre.isEmpty || email.isEmpty || password.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Por favor ingresa todos los datos")),
      );
      return;
    }

    if (password.length < 6) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("La contraseña debe tener al menos 6 caracteres"),
        ),
      );
      return;
    }

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("Registro exitoso: $nombre, $email")),
    );
  }

  @override
  Widget build(BuildContext context) {
    return RegistroDesign(
      nombreController: nombreController,
      emailController: emailController,
      passwordController: passwordController,
      onSubmit: _submit,
      onBack: () => Navigator.pop(context),
    );
  }
}
