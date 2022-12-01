import 'package:flutter/material.dart';


class CompraTotal extends StatefulWidget {
  const CompraTotal({super.key});

  @override
  State<CompraTotal> createState() => _CompraTotalState();
}


class _CompraTotalState extends State<CompraTotal> {
  TextEditingController cPrecio = TextEditingController();
  TextEditingController cCantidad = TextEditingController();
  int precio = 0;
  int cantidad = 0;
  int total = 0;
  void Calcular(){
    setState(() {
      precio = int.parse(cPrecio.text);
      cantidad = int.parse(cCantidad.text);
      total = precio * cantidad;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  const Text("Ejercicio 1 TOTAL COMPRA"),
      ),
      body: Column(
        children: [caja1(),caja2(),boton(),resultado()],
      ),
    );
  }

  Widget caja1(){
    return Container(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: cCantidad,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                label: Text("Digite Cantidad")
              ),
            ),
          );
  }

  Widget caja2(){
    return Container(
            padding: const EdgeInsets.all(10),
            child:  TextField(
              controller: cPrecio,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                label: Text("Digite Precio")
              ),
            ),
          );
  }

  Widget boton(){
    return Container(
            padding: const EdgeInsets.all(10),
             child: ElevatedButton(
              onPressed: (){
                Calcular();
              }, 
              child: const Text("Calcular")),
          );
  }

  Widget resultado(){
    return Text("El total de la compra: $total",
    style: const TextStyle(color: Color.fromARGB(255, 0, 140, 255), fontSize: 20),
    textAlign: TextAlign.center,
    );
  }
}