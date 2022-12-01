import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'servidor.dart';
import 'estudiantes.dart';
import 'package:http/http.dart' as http;

class registrar extends StatefulWidget {
  const registrar({super.key});

  @override
  State<registrar> createState() => _registrarState();
}

class _registrarState extends State<registrar> {
  final formKey = GlobalKey<FormState>();

  // Handles text onchange
  TextEditingController placaController = new TextEditingController();
  TextEditingController colorController = new TextEditingController();
  TextEditingController modeloController = new TextEditingController();
  TextEditingController marcaController = new TextEditingController();
  TextEditingController tipoController = new TextEditingController();

  // Http post request to create new data
  Future _createvehiculo() async {
    return await http.post(
      Uri.parse("${servidor.URL_PRINCIPAL}?controlador=vehiculo&accion=Registroveh"),
      body: {
        "placa": placaController.text,
        "color": colorController.text,
        "modelo": modeloController.text,
        "marca": marcaController.text,
        "tipo": tipoController.text
      },
    );
  }

  void _onConfirm(context) async {
    await _createvehiculo();

    // Remove all existing routes until the Home.dart, then rebuild Home.
    Navigator.of(context)
        .pushNamedAndRemoveUntil('/', (Route<dynamic> route) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create"),
      ),
      bottomNavigationBar: BottomAppBar(
        child: ElevatedButton(
          child: Text("CONFIRM"),
          onPressed: () {
              _onConfirm(context);
            
          },
        ),
      ),
      
       body: ListView(
          children: [
            caja1(),caja2(),caja3(),caja4(),caja5()
          ],
        ),
        
        
     
    );
   

////body: {
   //     'id': widget.vehiculo.VEH_ID.toString(),
   //   },
  
}
 Widget caja1(){
    return Container(
            padding: const EdgeInsets.all(10),
            child:   TextField(
              keyboardType: TextInputType.text,
            controller: placaController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                label: Text("Digite placa")
              ),
            ),
          );
  }
  Widget caja2(){
    return Container(
            padding: const EdgeInsets.all(10),
            child:   TextField(
              keyboardType: TextInputType.text,
             controller: colorController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                label: Text("Digite color")
              ),
            ),
          );
  }
  Widget caja3(){
    return Container(
            padding: const EdgeInsets.all(10),
            child:   TextField(
              keyboardType: TextInputType.emailAddress,
              controller: modeloController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                label: Text("Digite modelo")
              ),
            ),
          );
  }

  Widget caja4(){
    return Container(
            padding: const EdgeInsets.all(10),
            child:  TextField(
              keyboardType: TextInputType.visiblePassword,
             controller: marcaController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                label: Text("Digite marca")
              ),
            ),
          );
  }
  Widget caja5(){
    return Container(
            padding: const EdgeInsets.all(10),
            child:  TextField(
              keyboardType: TextInputType.visiblePassword,
              controller: tipoController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                label: Text("Digite tipo")
              ),
            ),
          );
  }
  }
