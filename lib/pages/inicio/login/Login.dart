import 'package:aplicacionmovil/pages/inicio/login/widget/login_form.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Fondo con imagen
          Image.network(
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSbT-cpO_BConn0dH-m2ybbBNT5LUEpgAEUSg&s",
            fit: BoxFit.cover,
          ),

          // Formulario de login
          const Center(child: LoginForm()),
        ],
      ),
    );
  }
}
