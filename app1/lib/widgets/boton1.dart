import 'package:flutter/material.dart';

class Boton1 extends StatefulWidget {
  const Boton1({super.key});

  @override
  State<Boton1> createState() => _Boton1State();
}

class _Boton1State extends State<Boton1> {
  int contador= 0;
  void aumentar (){
    setState(() {
     contador++; 
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        title : const Text('Etiqueta'),
        ),
        body:  Center(
          child: ElevatedButton(
            onPressed: (){
              aumentar();
            },
            child: Text("aceptar $contador"),
          ),
        ),
    );
  }
}