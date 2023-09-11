import 'package:flutter/material.dart';

class EditHeader extends StatelessWidget {
  const EditHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Edit fields",
      textScaleFactor: 1.5,
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
