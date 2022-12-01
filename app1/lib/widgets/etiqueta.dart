import 'package:flutter/material.dart';

class Etiqueta extends StatelessWidget {
  const Etiqueta({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Etiqueta"),
      ),
      body: const Center(
        child: Text(
          "Bienvenidos",
          style: TextStyle(color: Colors.red, fontSize: 30),
        ),
      ),
    );
  }
}