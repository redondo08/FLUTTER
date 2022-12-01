import 'package:flutter/material.dart';

class form_imc extends StatefulWidget {
  const form_imc({super.key});

  @override
  State<form_imc> createState() => _form_imcState();
}

class _form_imcState extends State<form_imc> {
  TextEditingController cpeso = TextEditingController();
  TextEditingController ctalla = TextEditingController();
  double peso = 0;
  double talla = 0;
  double total = 0;
  String resul = " ";
  void Calcular(){
    setState(() {
      talla = double.parse(ctalla.text);
      peso = double.parse(cpeso.text);
      total =double.parse((peso/(talla*talla)).toStringAsFixed(((2))));
      if(total <=18.5){
        resul="esta llevao ";
      }
      else if(total >18.5 && total <=24.9){
        resul="todo bien todo correcto";
      }
      else if(total >=25 && total <=29.9){
        resul="estas un poco pasado con la comida";
      }
      else if(total >=30 && total <=34.9){
        resul="estar rellenito";
      }
      else if(total >=35 && total <=39.9){
        resul="joa mani tas llevado pero por la comida";
      }

    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  const Text("Ejercicio imc"),
      ),
      body: Column(
        children: [
          const Text("Peso (kg)"),
          caja1(),
          const Text("altura mts"),
          caja2(),
          boton(),
          resultado(),
          ],
      ),
    );
  }
  Widget caja1(){
    return Container(
            padding: const EdgeInsets.all(10),
            child:  TextField(
              controller: cpeso,
              keyboardType: TextInputType.number,
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
              controller: ctalla,
              keyboardType: TextInputType.number,
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
                Calcular();
              }, 
              child: const Text("Calcular")),
          );
  }
  
  Widget resultado(){
    return Text("El total es: $total $resul" ,
    style: const TextStyle(color: Color.fromARGB(255, 0, 140, 255), fontSize: 20),
    textAlign: TextAlign.center,
    );
  }
}