import 'package:flutter/material.dart';

class alert extends StatelessWidget {
  const alert({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("alertas"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            mostra_alerta(context);
          },
          child: const Text("hola"),
        ),
      ),
    );
  }

  mostra_alerta(context) {
    Widget okbotn = TextButton(
      onPressed: () {
        Navigator.pop(context);
      },
      child: const Text("aceptar"),
    );
    Widget okbot = TextButton(
      onPressed: () {
        Navigator.pop(context);
      },
      child: const Text("cancelar"),
    );
    AlertDialog alerta = AlertDialog(
      title: const Text("mensaje"),
      content: const Text("bienvenidos a mi app"),
      actions: [okbotn,okbot],
    );
    showDialog(
      context: context,
       builder: (BuildContext context){
          return alerta;
       }
       );
  }


  
}
