import 'package:flutter/material.dart';

class AuthCard extends StatelessWidget {
  final String title;
  final List<Widget> children;

  const AuthCard({super.key, required this.title, required this.children});

  @override
  Widget build(BuildContext context) {
    final bool isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return LayoutBuilder(
      builder: (context, constraints) {
        bool isMobile = constraints.maxWidth < 600;

        double formWidth = isMobile
            ? constraints.maxWidth * 0.9
            : constraints.maxWidth * 0.4;
        double padding = isMobile ? 16 : 24;
        double fontSizeTitle = isMobile ? 20 : 26;

        return Center(
          child: Container(
            width: formWidth,
            padding: EdgeInsets.all(padding),
            decoration: BoxDecoration(
              color: isDarkMode
                  ? Colors.grey[850] // fondo en oscuro
                  : const Color.fromARGB(255, 5, 218, 111), // fondo en claro
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.2),
                  blurRadius: 8,
                  offset: const Offset(2, 4),
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: fontSizeTitle,
                    fontWeight: FontWeight.bold,
                    color: isDarkMode ? Colors.white : Colors.black,
                  ),
                ),
                const SizedBox(height: 20),
                ...children,
              ],
            ),
          ),
        );
      },
    );
  }
}
