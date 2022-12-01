import 'package:flutter/material.dart';

class Ejeradio extends StatefulWidget {
  const Ejeradio({super.key});

  @override
  State<Ejeradio> createState() => _EjeradioState();
}

class _EjeradioState extends State<Ejeradio> {
  String genero = "masculino";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Radio"),
      ),
      body: Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          const Text("Seleccione genero"),

          const Divider(),

          RadioListTile(
            title: const Text("Masculino"),
            value: "masculino",
            groupValue: genero,//AGRUPANDOLO EN LA MISMA CATEGORIA
            onChanged: (value){ //CADA VEZ QUE PRESIONE EE RADIO ESTOY LLAMANDO EL METODO
              setState(() { //METODO DE CAMBIO DE ESTADO PARA RECUPERAR VALOR DE ESE RADIO}
                genero=value.toString();
              });
            }
          ),
         
          RadioListTile(
            title: const Text("Femenino"),
            value: "femenino",
            groupValue: genero,
            onChanged: (value){
              setState(() {
                genero=value.toString();
              });
            }
          ),
          Text("GENERO $genero"),
        ],
      ),
    ),
    );
  }
}