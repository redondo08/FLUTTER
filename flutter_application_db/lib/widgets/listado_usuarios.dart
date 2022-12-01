import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../bd/bd.dart';

class listado_usuarios extends StatefulWidget {
  const listado_usuarios({super.key});

  @override
  State<listado_usuarios> createState() => _listado_usuariosState();
}

class _listado_usuariosState extends State<listado_usuarios> {
  List<Map<String, dynamic>> usuario = [];
  void listar() async {
    final u = await Bd.getusuario();
    setState(() {
      usuario = u;
    });
  }

  @override
  void initState() {
    super.initState();
    listar();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("registrar"),
        ),
        body: ListView.builder(
          itemCount: usuario.length,
          itemBuilder: (context, int index) => Card(
            color: Colors.blue,
            margin: const EdgeInsets.all(10),
            child: ListTile(
              title: Text(usuario[index]["nombre"],
                  style: const TextStyle(color: Colors.red)),
              subtitle: Text(usuario[index]["correo"],
                  style: const TextStyle(color: Colors.red)),
              trailing: SizedBox(
                width: 100,
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pushNamed(context, "/frmeditar",
                              arguments: {"id": usuario[index]["id"], "nombre":usuario[index]["nombre"],"apellido":usuario[index]["apellido"], "correo":usuario[index]["correo"]});
                        },
                        icon: const Icon(Icons.edit)),
                    IconButton(
                        onPressed: () {
                          mostrarAlerta(usuario[index]["id"]);
                        },
                        icon: const Icon(Icons.delete)),
                  ],
                ),
              ),
            ),
          ),
        ));
  }

  void eliminar(int id) async {
    await Bd.eliminarUsuario(id);
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      content: Text("borrado sactisfactoriamente"),
    ));
    listar();
  }

  mostrarAlerta(int id) {
    Widget okboton = TextButton(
        onPressed: () {
          eliminar(id);
          Navigator.pop(context);
        },
        child: const Text("Aceptar"));

    Widget cancelar =
        TextButton(onPressed: () { Navigator.pop(context);}, child: const Text("Cancelar"));

    AlertDialog alerta = AlertDialog(
      title: const Text("Confirmación"),
      content: const Text("¿Desea eliminar?"),
      actions: [okboton, cancelar],
    );

    showDialog(
        context: context,
        builder: (BuildContext context) {
          return alerta;
        });
  }
}
