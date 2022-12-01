import 'package:flutter/material.dart';

class Etiquetas extends StatelessWidget {
  const Etiquetas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Etiquetas"),
      ),
      body: Column(
        children: const[
          Text("Hola mundo"),
          Text("Bienvenidos"),
        ]
      
      ),
    );
  }
}