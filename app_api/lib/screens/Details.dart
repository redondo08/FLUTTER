import 'package:flutter/material.dart';
import 'dart:convert';
import 'vehiculos.dart';
import 'package:flutter/material.dart';
import 'servidor.dart';
import 'estudiantes.dart';
import 'package:http/http.dart' as http;
import 'Edit.dart';

class Details extends StatefulWidget {
  final vehiculos vehiculo;

  Details({required this.vehiculo});

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  void deletevehiculo(context) async {
    await http.get(
      Uri.parse("${servidor.URL_PRINCIPAL}?controlador=vehiculo&accion=eliminar&id=${widget.vehiculo.VEH_ID.toString()}"),
    );
    // Navigator.pop(context);
    Navigator.of(context)
        .pushNamedAndRemoveUntil('/', (Route<dynamic> route) => false);
  }

  void confirmDelete(context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Text('Are you sure you want to delete this?'),
          actions: <Widget>[
            ElevatedButton(
              child: Icon(Icons.cancel),
              // color: Colors.red,
              // textColor: Colors.white,
              onPressed: () => Navigator.of(context).pop(),
            ),
            ElevatedButton(
              child: Icon(Icons.check_circle),
              // color: Colors.blue,
              // textColor: Colors.white,
              onPressed: () => deletevehiculo(context),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Details'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.delete),
            onPressed: () => confirmDelete(context),
          ),
        ],
      ),
      body: Container(
        height: 270.0,
        padding: const EdgeInsets.all(35),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "id : ${widget.vehiculo.VEH_ID}",
              style: TextStyle(fontSize: 20),
            ),
            Padding(
              padding: EdgeInsets.all(10),
            ),
            Text(
              "MARCA : ${widget.vehiculo.VEH_MARCA}",
              style: TextStyle(fontSize: 20),
            ),
            Text(
              "Age : ${widget.vehiculo.VEH_PLACA}",
              style: TextStyle(fontSize: 20),
            ),
            Text(
              "Name : ${widget.vehiculo.VEH_MODELO}",
              style: TextStyle(fontSize: 20),
            ),
            Text(
              "Name : ${widget.vehiculo.VEH_COLOR}",
              style: TextStyle(fontSize: 20),
            ),
            
          ],
        ),
      ),
     floatingActionButton: FloatingActionButton(
       child: Icon(Icons.edit),
       onPressed: () => Navigator.of(context).push(
       MaterialPageRoute(
            builder: (BuildContext context) => Edit(vehiculo: widget.vehiculo),
         ),
       ),
     ),
    );
  }
}