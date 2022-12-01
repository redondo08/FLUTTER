import 'package:flutter/material.dart';

class Boton extends StatelessWidget {
  const Boton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Boton"),
      ),
      body: Column(
        children: [
          const Text("Implementacion de boton"),
          ElevatedButton(
            onPressed: (){}, 
            child: const Text("Aceptar")),
          ElevatedButton(
            onPressed: (){}, 
            child: const Text("Cancelar")),
        ]
      
      ),
    );
  }
}