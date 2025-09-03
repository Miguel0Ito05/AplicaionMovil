import 'package:flutter/material.dart';

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45,
      height: 45,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Colors.black26, width: 1),
        image: const DecorationImage(
          image: AssetImage("recuerdameeeeeeee.jpg"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
