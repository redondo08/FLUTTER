import 'dart:convert';

import 'package:app_api/screens/Details.dart';
import 'package:app_api/screens/vehiculos.dart';
import 'package:flutter/material.dart';
import 'servidor.dart';
import 'package:http/http.dart' as http;

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
   late Future<List<vehiculos>> vehiculo;
   @override
  void initState() {
    super.initState();
    vehiculo = getvehiculosList();
  }
    Future<List<vehiculos>> getvehiculosList() async {
    final response = await http.get(Uri.parse("${servidor.URL_PRINCIPAL}?controlador=vehiculo&accion=listar_v"));
    final items = json.decode(response.body).cast<Map<String, dynamic>>();
    List<vehiculos> vehicul = items.map<vehiculos>((json) {
      return vehiculos.fromJson(json);
    }).toList();

    return vehicul;
  }

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      
      appBar: AppBar(
        title: Text('lista de vehiculos '),
        
      ),
      body: Center(
        child: FutureBuilder<List<vehiculos>>(
          future: vehiculo,
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            // By default, show a loading spinner.
            if (!snapshot.hasData) return CircularProgressIndicator();
            // Render student lists
            return ListView.builder(
              itemCount: snapshot.data.length,
              itemBuilder: (BuildContext context, int index) {
                var data = snapshot.data[index];
                return Card(
                  child: ListTile(
                    leading: Icon(Icons.car_repair),
                    trailing: Icon(Icons.view_list),
                    title: Text(
                      data.VEH_MARCA,
                      style: TextStyle(fontSize: 20),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                         MaterialPageRoute(builder: (context)=> Details(vehiculo:data)),
                      );
                    },
                  ),
                );
              },
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
                  Navigator.pushNamed(context, '/registrar');
                });
        },
      ),
    );
  }

}