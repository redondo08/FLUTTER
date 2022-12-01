import 'package:flutter/material.dart';

class datosPersonales extends StatefulWidget {
  const datosPersonales({super.key});

  @override
  State<datosPersonales> createState() => _datosPersonalesState();
}

class _datosPersonalesState extends State<datosPersonales> {
  @override
  Widget build(BuildContext context) {
  Map argumentos= ModalRoute.of(context)?.settings.arguments as Map ;
    return Scaffold(
      appBar: AppBar(
        title: const Text("datos personales"),
      ),
      body: Container(
        padding:const EdgeInsets.all(10),
        child: Text("su nombre es ${argumentos['nombre']}"),
      ),
    );
  }
}