import 'package:flutter/material.dart';

class Boton2 extends StatefulWidget {
  const Boton2({super.key});

  @override
  State<Boton2> createState() => _Boton2State();
}

class _Boton2State extends State<Boton2> {
  int contador = 0;
  void Aumentar(){
    setState(() {
      contador++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contador"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: (){
              Aumentar();
            }, 
            child: Text("Aceptar $contador")),
      ),
    );
  }
}