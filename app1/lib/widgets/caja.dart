import 'package:flutter/material.dart';

class Cajas extends StatelessWidget {
  const Cajas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Caja de texto"),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            child: const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                label: Text("Digite nombre")
              ),
            ),
          ),
           Container(
            padding: const EdgeInsets.all(10),
            child: const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                label: Text("Digite apellidos")
              ),
            ),
          ),
           Container(
            padding: const EdgeInsets.all(10),
            child: const TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                label: Text("Digite cedula")
              ),
            ),
          ),


          ElevatedButton(
            onPressed: (){}, 
            child: const Text("Aceptar")),
        ]
      
      ),
    );
  }
}