import 'package:flutter/material.dart';
 class resulrecta extends StatefulWidget {
  const resulrecta({super.key});

  @override
  State<resulrecta> createState() => _resulrectaState();
}

class _resulrectaState extends State<resulrecta> {
  @override
  Widget build(BuildContext context) {
    Map argumentos= ModalRoute.of(context)?.settings.arguments as Map ;
    return Scaffold(
      appBar: AppBar(
        title: const Text("rectangulo"),
      ),
      body: Column(
        children: [
          Text("el  ${argumentos['calculo']} del rectangulo para una base de ${argumentos['base']} y altura de ${argumentos['altura']}"),
          Text("${argumentos['resultado']} cm2")
        ]
        
     
    ),);
  }
}
