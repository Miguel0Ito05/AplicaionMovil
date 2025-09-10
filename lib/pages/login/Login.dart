import 'package:flutter/material.dart';
import 'package:aplicacionmovil/pages/login/widget/login_form.dart';
import 'package:aplicacionmovil/widgets/theme_toggle_button.dart';

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

          // Botón modo oscuro arriba a la derecha
          const Positioned(top: 40, right: 20, child: ThemeToggleButton()),

          // Formulario de login
          const Center(child: LoginForm()),
        ],
      ),
    );
  }
}
