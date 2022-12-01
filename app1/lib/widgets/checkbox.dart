import 'package:flutter/material.dart';


class Ejecheckbox extends StatefulWidget {
  const Ejecheckbox({super.key});

  @override
  State<Ejecheckbox> createState() => _EjecheckboxState();
}

class _EjecheckboxState extends State<Ejecheckbox> {
  bool estado = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Checkbox"),
      ),
      
      body: Column(
        children: [
          Center(
            child: Checkbox(
              value: estado,
              onChanged:(value){
                setState(() {
                  estado =! estado;
                });
              },
            ),
          ),
          Text("estado seleccion $estado")
        ],
      ),
    );
  }
}