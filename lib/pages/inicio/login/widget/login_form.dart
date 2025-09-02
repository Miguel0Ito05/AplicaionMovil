import 'package:aplicacionmovil/pages/inicio/login/widget/login_desing.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  void _login() {
    String email = emailController.text;
    String password = passwordController.text;

    if (email.isEmpty || password.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Por favor ingresa todos los datos")),
      );
    } else {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("Iniciando sesión con $email")));
    }
  }

  @override
  Widget build(BuildContext context) {
    return LoginDesign(
      emailController: emailController,
      passwordController: passwordController,
      onLogin: _login,
      onBack: () => Navigator.pop(context),
    );
  }
}
