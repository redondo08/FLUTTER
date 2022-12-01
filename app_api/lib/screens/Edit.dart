import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'vehiculos.dart';
import 'package:flutter/material.dart';
import 'servidor.dart';
import 'estudiantes.dart';
import 'package:http/http.dart' as http;
import "package:flutter/material.dart";

class Edit extends StatefulWidget {
  final vehiculos vehiculo;

  Edit({required this.vehiculo});

  @override
  _EditState createState() => _EditState();
}

class _EditState extends State<Edit> {
  // This is  for form validations
  final formKey = GlobalKey<FormState>();

  // This is for text onChange
  TextEditingController placaController = new TextEditingController();
  TextEditingController colorController = new TextEditingController();
  TextEditingController modeloController = new TextEditingController();
  TextEditingController marcaController = new TextEditingController();
  TextEditingController tipoController = new TextEditingController();

  // Http post request
  Future editStudent() async {
     return await http.post(
      Uri.parse("${servidor.URL_PRINCIPAL}?controlador=vehiculo&accion=frmEditarveh"),
      body: {
        "placa": placaController.text,
        "color": colorController.text,
        "modelo": modeloController.text,
        "marca": marcaController.text,
        "tipo": tipoController.text,
        "id":  widget.vehiculo.VEH_ID
      },
    );
  }

  void _onConfirm(context) async {
    await editStudent();
     Navigator.of(context)
        .pushNamedAndRemoveUntil('/', (Route<dynamic> route) => false);
  }

  @override
  void initState() {
    super.initState();

    placaController.text=widget.vehiculo.VEH_PLACA;
    colorController.text  =  widget.vehiculo.VEH_COLOR;
    modeloController.text=  widget.vehiculo.VEH_MODELO;
    marcaController.text  =  widget.vehiculo.VEH_MARCA;
    tipoController .text =  widget.vehiculo.VEH_TIPO;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit"),
      ),
      bottomNavigationBar: BottomAppBar(
        
        child: ElevatedButton(
          child: Text('CONFIRM'),
          onPressed: () {
            _onConfirm(context);
          },
        ),
      ),
      body: ListView(
          children: [
            caja1(),caja2(),caja3(),caja4(),caja5()
          ]
          ),
    );
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