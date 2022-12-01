import 'package:flutter/material.dart';
 class form_sueldo extends StatefulWidget {
  const form_sueldo({super.key});

  @override
  State<form_sueldo> createState() => _form_sueldoState();
}

class _form_sueldoState extends State<form_sueldo> {
  TextEditingController cnombre = TextEditingController();
  TextEditingController chorast = TextEditingController();
  TextEditingController chorasp = TextEditingController();
  String nombre = " ";
  double horast = 0;
  double hotasp = 0;
  double total =0;
  void calcular(){
    setState(() {
        horast = double.parse(chorast.text);
        hotasp = double.parse(chorasp.text);
       total=horast*hotasp;
    });
   
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff00BCD1),
      appBar: AppBar(
        title:  const Text("Ejercicio 1 TOTAL COMPRA"),
      ),
      body: ListView(
        children: [
          const Text("nombre de enpleado"),
          caja1(),
          const Text("horas trabajadas"),
          caja2(),
          const Text("valor de horas"),
          caja3(),
          boton(),
          resultado(),
          boton1()
          ],
      ),
    );
  }
  Widget caja1(){
    return Container(
            padding: const EdgeInsets.all(10),
            child:  TextField(
              controller: cnombre,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
          );
  }
  Widget caja2(){
    return Container(
            padding: const EdgeInsets.all(10),
            child: TextField(
             controller:  chorast,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
          );
  }
  Widget caja3(){
    return Container(
            padding: const EdgeInsets.all(10),
            child: TextField(
             controller: chorasp,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
          );
  }
   Widget boton(){
    return Container(
            padding: const EdgeInsets.all(10),
             child: ElevatedButton(
              onPressed: (){
                calcular();
              }, 
              child: const Text("Calcular")),
          );
  }
  Widget boton1(){
    return Container(
            padding: const EdgeInsets.all(10),
             child: ElevatedButton(
              onPressed: (){
                setState(() {
                  Navigator.pushNamed(context, '/datosPersonales', arguments:{"nombre" : cnombre.text});
                });
                
              }, 
              child: const Text("ir a otra ruta")),
          );
  }
  Widget resultado(){
    return Text("El total es: $total " ,
    style: const TextStyle(color: Color.fromARGB(255, 0, 140, 255), fontSize: 20),
    textAlign: TextAlign.center,
    );
  }
}